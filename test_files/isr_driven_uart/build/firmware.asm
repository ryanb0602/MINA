
/tmp/mina_build_JWRALw/firmware.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
.section .text.init
.global _start

_start:
    /* 1. Disable interrupts globally (good practice before setup) */
    csrw mstatus, zero
   0:	30001073          	csrw	mstatus,zero
    
    /* 2. Set up the Global Pointer */
    .option push
    .option norelax
    la gp, __global_pointer$
   4:	10001197          	auipc	gp,0x10001
   8:	83c18193          	addi	gp,gp,-1988 # 10000840 <__global_pointer$>
    .option pop

    /* 3. Set up the Stack Pointer */
    la sp, _stack_top
   c:	10010117          	auipc	sp,0x10010
  10:	ff410113          	addi	sp,sp,-12 # 10010000 <_stack_top>

    /* 4. Copy .data from SHARED_RAM to CPU_RAM */
    la a0, _data_load_start /* Source address */
  14:	5a000513          	li	a0,1440
    la a1, _sdata           /* Destination address */
  18:	10000597          	auipc	a1,0x10000
  1c:	fe858593          	addi	a1,a1,-24 # 10000000 <plic_idx_sort>
    la a2, _edata           /* End of destination */
  20:	10000617          	auipc	a2,0x10000
  24:	02060613          	addi	a2,a2,32 # 10000040 <plic_irq_handlers>
    bgeu a1, a2, end_copy_data /* Skip if no data */
  28:	00c5fa63          	bgeu	a1,a2,3c <end_copy_data>

0000002c <copy_data_loop>:
copy_data_loop:
    lw t0, 0(a0)            /* Load word from SHARED_RAM */
  2c:	00052283          	lw	t0,0(a0)
    sw t0, 0(a1)            /* Store word to CPU_RAM */
  30:	0055a023          	sw	t0,0(a1)
    addi a0, a0, 4          /* Increment source pointer */
  34:	0511                	addi	a0,a0,4
    addi a1, a1, 4          /* Increment destination pointer */
  36:	0591                	addi	a1,a1,4
    bltu a1, a2, copy_data_loop
  38:	fec5eae3          	bltu	a1,a2,2c <copy_data_loop>

0000003c <end_copy_data>:
end_copy_data:

    /* 5. Zero out the .bss section in CPU_RAM */
    la a0, _sbss
  3c:	10000517          	auipc	a0,0x10000
  40:	00450513          	addi	a0,a0,4 # 10000040 <plic_irq_handlers>
    la a1, _ebss
  44:	10000597          	auipc	a1,0x10000
  48:	22458593          	addi	a1,a1,548 # 10000268 <_ebss>
    bgeu a0, a1, end_clear_bss /* Skip if no bss */
  4c:	00b57763          	bgeu	a0,a1,5a <end_clear_bss>

00000050 <clear_bss_loop>:
clear_bss_loop:
    sw zero, 0(a0)
  50:	00052023          	sw	zero,0(a0)
    addi a0, a0, 4
  54:	0511                	addi	a0,a0,4
    bltu a0, a1, clear_bss_loop
  56:	feb56de3          	bltu	a0,a1,50 <clear_bss_loop>

0000005a <end_clear_bss>:
end_clear_bss:

    /* 6. Jump to main C function */
    call main
  5a:	2011                	jal	5e <main>

0000005c <inf_loop>:

    /* 7. Catch return from main (should not happen in bare-metal) */
inf_loop:
    j inf_loop
  5c:	a001                	j	5c <inf_loop>

0000005e <main>:
#include "../../sdk/drivers/drivers.h"
#include <stdint.h>

int main(void) {
  5e:	1141                	addi	sp,sp,-16
  60:	c606                	sw	ra,12(sp)
  62:	c422                	sw	s0,8(sp)

  volatile uint32_t *gpio = (volatile uint32_t *)0x20003000;

  volatile uint32_t *gpio_t_state = gpio + 1;

  *gpio_t_state = 0x00000000;
  64:	200037b7          	lui	a5,0x20003
  68:	20003437          	lui	s0,0x20003
  6c:	0007a223          	sw	zero,4(a5) # 20003004 <_stack_top+0xfff3004>
  *gpio = (uint32_t)0;
  70:	00042023          	sw	zero,0(s0) # 20003000 <_stack_top+0xfff3000>

  init_interrupts();
  74:	2025                	jal	9c <init_interrupts>

  *gpio |= 0b0001;
  76:	401c                	lw	a5,0(s0)
  78:	0017e793          	ori	a5,a5,1
  7c:	c01c                	sw	a5,0(s0)

  uart_init();
  7e:	2efd                	jal	47c <uart_init>

  *gpio |= 0b0011;
  80:	401c                	lw	a5,0(s0)

  uart_puts("MINA SoC, ISR driven UART test\n");
  82:	55800513          	li	a0,1368
  *gpio |= 0b0011;
  86:	0037e793          	ori	a5,a5,3
  8a:	c01c                	sw	a5,0(s0)
  uart_puts("MINA SoC, ISR driven UART test\n");
  8c:	216d                	jal	536 <uart_puts>
  uart_puts("________________________________\n");
  8e:	57800513          	li	a0,1400
  92:	2155                	jal	536 <uart_puts>

  while (1) {

    char c = uart_getc();
  94:	2149                	jal	516 <uart_getc>
    uart_putc(c);
  96:	2921                	jal	4ae <uart_putc>
  while (1) {
  98:	bff5                	j	94 <main+0x36>
	...

0000009c <init_interrupts>:
int plic_irq_priorities[8] = {-1, -1, -1, -1, -1, -1, -1, -1};
int plic_idx_sort[8] = {0, 1, 2, 3, 4, 5, 6, 7};

void init_interrupts(void) {
  // A. Point mtvec to our handler (Direct mode: lowest 2 bits are 00)
  write_csr(mtvec, (unsigned long)trap_handler);
  9c:	13800793          	li	a5,312
  a0:	30579073          	csrw	mtvec,a5

  // B. Enable Machine External Interrupts in the 'mie' register
  set_csr(mie, MIE_MEIE);
  a4:	6785                	lui	a5,0x1
  a6:	80078793          	addi	a5,a5,-2048 # 800 <_data_load_start+0x260>
  aa:	3047a7f3          	csrrs	a5,mie,a5

  // C. Enable Global Machine Interrupts in the 'mstatus' register
  set_csr(mstatus, MSTATUS_MIE);
  ae:	300467f3          	csrrsi	a5,mstatus,8
}
  b2:	8082                	ret

000000b4 <plic_irq_handler>:
  } else {
    // Handle synchronous exceptions (faults, illegal instructions, ecalls) here
  }
}

void plic_irq_handler(void) {
  b4:	7179                	addi	sp,sp,-48

  uint32_t pending = *PLIC_IRQ_PEND;
  b6:	200007b7          	lui	a5,0x20000
void plic_irq_handler(void) {
  ba:	c85a                	sw	s6,16(sp)
  bc:	c65e                	sw	s7,12(sp)
  be:	10000b37          	lui	s6,0x10000
  uint32_t pending = *PLIC_IRQ_PEND;
  c2:	0047ab83          	lw	s7,4(a5) # 20000004 <_stack_top+0xfff0004>

  for (int i = 0; i < 8; i++) {
  c6:	000b0b13          	mv	s6,s6
void plic_irq_handler(void) {
  ca:	d04a                	sw	s2,32(sp)
  cc:	ca56                	sw	s5,20(sp)
    int current_idx = plic_idx_sort[i];

    if ((pending & (1 << current_idx)) != 0) {
      if (plic_irq_handlers[current_idx] &&
  ce:	10000937          	lui	s2,0x10000
          plic_irq_priorities[current_idx] != -1) {
        plic_irq_handlers[current_idx]();

        // THIS ASSUMES THE HANDLER CLEARS THE STATE CAUSING THE INTERRUPT,
        // OTHERWISE THE IRQ WILL TRIGGER AGAIN
        *PLIC_CLAIM_REG = 1 << current_idx;
  d2:	20000ab7          	lui	s5,0x20000
void plic_irq_handler(void) {
  d6:	d226                	sw	s1,36(sp)
  d8:	ce4e                	sw	s3,28(sp)
  da:	cc52                	sw	s4,24(sp)
  dc:	c462                	sw	s8,8(sp)
  de:	d606                	sw	ra,44(sp)
  e0:	d422                	sw	s0,40(sp)
  e2:	84da                	mv	s1,s6
  e4:	020b0a13          	addi	s4,s6,32 # 10000020 <plic_irq_priorities>
      if (plic_irq_handlers[current_idx] &&
  e8:	04090913          	addi	s2,s2,64 # 10000040 <plic_irq_handlers>
        *PLIC_CLAIM_REG = 1 << current_idx;
  ec:	0aa1                	addi	s5,s5,8 # 20000008 <_stack_top+0xfff0008>
    if ((pending & (1 << current_idx)) != 0) {
  ee:	4985                	li	s3,1
      if (plic_irq_handlers[current_idx] &&
  f0:	5c7d                	li	s8,-1
    int current_idx = plic_idx_sort[i];
  f2:	409c                	lw	a5,0(s1)
    if ((pending & (1 << current_idx)) != 0) {
  f4:	00f99433          	sll	s0,s3,a5
      if (plic_irq_handlers[current_idx] &&
  f8:	00279713          	slli	a4,a5,0x2
    if ((pending & (1 << current_idx)) != 0) {
  fc:	017477b3          	and	a5,s0,s7
      if (plic_irq_handlers[current_idx] &&
 100:	00e906b3          	add	a3,s2,a4
    if ((pending & (1 << current_idx)) != 0) {
 104:	cb91                	beqz	a5,118 <plic_irq_handler+0x64>
      if (plic_irq_handlers[current_idx] &&
 106:	429c                	lw	a5,0(a3)
          plic_irq_priorities[current_idx] != -1) {
 108:	975a                	add	a4,a4,s6
      if (plic_irq_handlers[current_idx] &&
 10a:	c799                	beqz	a5,118 <plic_irq_handler+0x64>
 10c:	5318                	lw	a4,32(a4)
 10e:	01870563          	beq	a4,s8,118 <plic_irq_handler+0x64>
        plic_irq_handlers[current_idx]();
 112:	9782                	jalr	a5
        *PLIC_CLAIM_REG = 1 << current_idx;
 114:	008aa023          	sw	s0,0(s5)
  for (int i = 0; i < 8; i++) {
 118:	0491                	addi	s1,s1,4
 11a:	fd449ce3          	bne	s1,s4,f2 <plic_irq_handler+0x3e>
      }
    }
  }
}
 11e:	50b2                	lw	ra,44(sp)
 120:	5422                	lw	s0,40(sp)
 122:	5492                	lw	s1,36(sp)
 124:	5902                	lw	s2,32(sp)
 126:	49f2                	lw	s3,28(sp)
 128:	4a62                	lw	s4,24(sp)
 12a:	4ad2                	lw	s5,20(sp)
 12c:	4b42                	lw	s6,16(sp)
 12e:	4bb2                	lw	s7,12(sp)
 130:	4c22                	lw	s8,8(sp)
 132:	6145                	addi	sp,sp,48
 134:	8082                	ret
 136:	0001                	nop

00000138 <trap_handler>:
void __attribute__((interrupt("machine"), aligned(4))) trap_handler(void) {
 138:	7139                	addi	sp,sp,-64
 13a:	de06                	sw	ra,60(sp)
 13c:	dc16                	sw	t0,56(sp)
 13e:	da1a                	sw	t1,52(sp)
 140:	d81e                	sw	t2,48(sp)
 142:	d62a                	sw	a0,44(sp)
 144:	d42e                	sw	a1,40(sp)
 146:	d232                	sw	a2,36(sp)
 148:	d036                	sw	a3,32(sp)
 14a:	ce3a                	sw	a4,28(sp)
 14c:	cc3e                	sw	a5,24(sp)
 14e:	ca42                	sw	a6,20(sp)
 150:	c846                	sw	a7,16(sp)
 152:	c672                	sw	t3,12(sp)
 154:	c476                	sw	t4,8(sp)
 156:	c27a                	sw	t5,4(sp)
 158:	c07e                	sw	t6,0(sp)
  unsigned long cause = read_csr(mcause);
 15a:	34202773          	csrr	a4,mcause
    if (exception_code == IRQ_M_EXT) {
 15e:	800007b7          	lui	a5,0x80000
 162:	07ad                	addi	a5,a5,11 # 8000000b <_stack_top+0x6fff000b>
 164:	02f70563          	beq	a4,a5,18e <trap_handler+0x56>
}
 168:	50f2                	lw	ra,60(sp)
 16a:	52e2                	lw	t0,56(sp)
 16c:	5352                	lw	t1,52(sp)
 16e:	53c2                	lw	t2,48(sp)
 170:	5532                	lw	a0,44(sp)
 172:	55a2                	lw	a1,40(sp)
 174:	5612                	lw	a2,36(sp)
 176:	5682                	lw	a3,32(sp)
 178:	4772                	lw	a4,28(sp)
 17a:	47e2                	lw	a5,24(sp)
 17c:	4852                	lw	a6,20(sp)
 17e:	48c2                	lw	a7,16(sp)
 180:	4e32                	lw	t3,12(sp)
 182:	4ea2                	lw	t4,8(sp)
 184:	4f12                	lw	t5,4(sp)
 186:	4f82                	lw	t6,0(sp)
 188:	6121                	addi	sp,sp,64
 18a:	30200073          	mret
      plic_irq_handler();
 18e:	371d                	jal	b4 <plic_irq_handler>
}
 190:	bfe1                	j	168 <trap_handler+0x30>

00000192 <resort_by_prior>:
  *PLIC_IRQ_ACTV |= actv_mask;

  resort_by_prior();
}

void resort_by_prior() {
 192:	1141                	addi	sp,sp,-16

  for (int i = 0; i < 8; i++) {
    plic_idx_sort[i] = i;
 194:	100007b7          	lui	a5,0x10000
 198:	00078793          	mv	a5,a5
void resort_by_prior() {
 19c:	c622                	sw	s0,12(sp)
 19e:	c426                	sw	s1,8(sp)
 1a0:	c24a                	sw	s2,4(sp)
 1a2:	c04e                	sw	s3,0(sp)
    plic_idx_sort[i] = i;
 1a4:	4709                	li	a4,2
 1a6:	c798                	sw	a4,8(a5)
 1a8:	470d                	li	a4,3
 1aa:	c7d8                	sw	a4,12(a5)
 1ac:	4711                	li	a4,4
 1ae:	cb98                	sw	a4,16(a5)
 1b0:	4715                	li	a4,5
 1b2:	cbd8                	sw	a4,20(a5)
 1b4:	4719                	li	a4,6
 1b6:	cf98                	sw	a4,24(a5)
  }

  // 19-Comparator Sorting Network for N=8
  // Layer 1
  CS(0, 1);
 1b8:	0207a283          	lw	t0,32(a5) # 10000020 <plic_irq_priorities>
    plic_idx_sort[i] = i;
 1bc:	471d                	li	a4,7
  CS(0, 1);
 1be:	53c4                	lw	s1,36(a5)
    plic_idx_sort[i] = i;
 1c0:	cfd8                	sw	a4,28(a5)
 1c2:	4705                	li	a4,1
 1c4:	0007a023          	sw	zero,0(a5)
 1c8:	c3d8                	sw	a4,4(a5)
  CS(0, 1);
 1ca:	8eba                	mv	t4,a4
 1cc:	4401                	li	s0,0
 1ce:	0092da63          	bge	t0,s1,1e2 <resort_by_prior+0x50>
 1d2:	8696                	mv	a3,t0
 1d4:	c398                	sw	a4,0(a5)
 1d6:	82a6                	mv	t0,s1
 1d8:	0007a223          	sw	zero,4(a5)
 1dc:	84b6                	mv	s1,a3
 1de:	843a                	mv	s0,a4
 1e0:	4e81                	li	t4,0
  CS(2, 3);
 1e2:	578c                	lw	a1,40(a5)
 1e4:	57d8                	lw	a4,44(a5)
 1e6:	4f0d                	li	t5,3
 1e8:	4809                	li	a6,2
 1ea:	00e5db63          	bge	a1,a4,200 <resort_by_prior+0x6e>
 1ee:	86ae                	mv	a3,a1
 1f0:	01e7a423          	sw	t5,8(a5)
 1f4:	0107a623          	sw	a6,12(a5)
 1f8:	85ba                	mv	a1,a4
 1fa:	8f42                	mv	t5,a6
 1fc:	8736                	mv	a4,a3
 1fe:	480d                	li	a6,3
  CS(4, 5);
 200:	5b94                	lw	a3,48(a5)
 202:	5bd0                	lw	a2,52(a5)
 204:	4e15                	li	t3,5
 206:	4311                	li	t1,4
 208:	00c6db63          	bge	a3,a2,21e <resort_by_prior+0x8c>
 20c:	8536                	mv	a0,a3
 20e:	01c7a823          	sw	t3,16(a5)
 212:	0067aa23          	sw	t1,20(a5)
 216:	86b2                	mv	a3,a2
 218:	8e1a                	mv	t3,t1
 21a:	862a                	mv	a2,a0
 21c:	4315                	li	t1,5
  CS(6, 7);
 21e:	5f88                	lw	a0,56(a5)
 220:	03c7af83          	lw	t6,60(a5)
 224:	439d                	li	t2,7
 226:	4899                	li	a7,6
 228:	01f55b63          	bge	a0,t6,23e <resort_by_prior+0xac>
 22c:	892a                	mv	s2,a0
 22e:	0077ac23          	sw	t2,24(a5)
 232:	0117ae23          	sw	a7,28(a5)
 236:	857e                	mv	a0,t6
 238:	83c6                	mv	t2,a7
 23a:	8fca                	mv	t6,s2
 23c:	489d                	li	a7,7
  // Layer 2
  CS(0, 2);
 23e:	00b2db63          	bge	t0,a1,254 <resort_by_prior+0xc2>
 242:	89ae                	mv	s3,a1
 244:	8942                	mv	s2,a6
 246:	0107a023          	sw	a6,0(a5)
 24a:	c780                	sw	s0,8(a5)
 24c:	8596                	mv	a1,t0
 24e:	8822                	mv	a6,s0
 250:	82ce                	mv	t0,s3
 252:	844a                	mv	s0,s2
  CS(1, 3);
 254:	00e4dc63          	bge	s1,a4,26c <resort_by_prior+0xda>
 258:	89a6                	mv	s3,s1
 25a:	8976                	mv	s2,t4
 25c:	01d7a623          	sw	t4,12(a5)
 260:	01e7a223          	sw	t5,4(a5)
 264:	84ba                	mv	s1,a4
 266:	8efa                	mv	t4,t5
 268:	874e                	mv	a4,s3
 26a:	8f4a                	mv	t5,s2
  CS(4, 6);
 26c:	00a6dc63          	bge	a3,a0,284 <resort_by_prior+0xf2>
 270:	89aa                	mv	s3,a0
 272:	8946                	mv	s2,a7
 274:	0117a823          	sw	a7,16(a5)
 278:	0067ac23          	sw	t1,24(a5)
 27c:	8536                	mv	a0,a3
 27e:	889a                	mv	a7,t1
 280:	86ce                	mv	a3,s3
 282:	834a                	mv	t1,s2
  CS(5, 7);
 284:	01f65c63          	bge	a2,t6,29c <resort_by_prior+0x10a>
 288:	89b2                	mv	s3,a2
 28a:	8972                	mv	s2,t3
 28c:	01c7ae23          	sw	t3,28(a5)
 290:	0077aa23          	sw	t2,20(a5)
 294:	867e                	mv	a2,t6
 296:	8e1e                	mv	t3,t2
 298:	8fce                	mv	t6,s3
 29a:	83ca                	mv	t2,s2
  // Layer 3
  CS(1, 2);
 29c:	00b4dc63          	bge	s1,a1,2b4 <resort_by_prior+0x122>
 2a0:	89a6                	mv	s3,s1
 2a2:	8976                	mv	s2,t4
 2a4:	01d7a423          	sw	t4,8(a5)
 2a8:	0107a223          	sw	a6,4(a5)
 2ac:	84ae                	mv	s1,a1
 2ae:	8ec2                	mv	t4,a6
 2b0:	85ce                	mv	a1,s3
 2b2:	884a                	mv	a6,s2
  CS(5, 6);
 2b4:	00a65c63          	bge	a2,a0,2cc <resort_by_prior+0x13a>
 2b8:	89b2                	mv	s3,a2
 2ba:	8972                	mv	s2,t3
 2bc:	01c7ac23          	sw	t3,24(a5)
 2c0:	0117aa23          	sw	a7,20(a5)
 2c4:	862a                	mv	a2,a0
 2c6:	8e46                	mv	t3,a7
 2c8:	854e                	mv	a0,s3
 2ca:	88ca                	mv	a7,s2
  CS(0, 4);
 2cc:	00d2d763          	bge	t0,a3,2da <resort_by_prior+0x148>
 2d0:	0067a023          	sw	t1,0(a5)
 2d4:	cb80                	sw	s0,16(a5)
 2d6:	8696                	mv	a3,t0
 2d8:	8322                	mv	t1,s0
  CS(3, 7);
 2da:	01f75863          	bge	a4,t6,2ea <resort_by_prior+0x158>
 2de:	01e7ae23          	sw	t5,28(a5)
 2e2:	0077a623          	sw	t2,12(a5)
 2e6:	877e                	mv	a4,t6
 2e8:	8f1e                	mv	t5,t2
  // Layer 4
  CS(1, 5);
 2ea:	00c4dc63          	bge	s1,a2,302 <resort_by_prior+0x170>
 2ee:	82a6                	mv	t0,s1
 2f0:	8ff6                	mv	t6,t4
 2f2:	01d7aa23          	sw	t4,20(a5)
 2f6:	01c7a223          	sw	t3,4(a5)
 2fa:	84b2                	mv	s1,a2
 2fc:	8ef2                	mv	t4,t3
 2fe:	8616                	mv	a2,t0
 300:	8e7e                	mv	t3,t6
  CS(2, 6);
 302:	00a5dc63          	bge	a1,a0,31a <resort_by_prior+0x188>
 306:	82aa                	mv	t0,a0
 308:	8fc6                	mv	t6,a7
 30a:	0117a423          	sw	a7,8(a5)
 30e:	0107ac23          	sw	a6,24(a5)
 312:	852e                	mv	a0,a1
 314:	88c2                	mv	a7,a6
 316:	8596                	mv	a1,t0
 318:	887e                	mv	a6,t6
  // Layer 5
  CS(1, 4);
 31a:	00d4d863          	bge	s1,a3,32a <resort_by_prior+0x198>
 31e:	0067a223          	sw	t1,4(a5)
 322:	01d7a823          	sw	t4,16(a5)
 326:	86a6                	mv	a3,s1
 328:	8376                	mv	t1,t4
  CS(3, 6);
 32a:	00a75863          	bge	a4,a0,33a <resort_by_prior+0x1a8>
 32e:	01e7ac23          	sw	t5,24(a5)
 332:	0117a623          	sw	a7,12(a5)
 336:	872a                	mv	a4,a0
 338:	8f46                	mv	t5,a7
  // Layer 6
  CS(2, 4);
 33a:	00d5d863          	bge	a1,a3,34a <resort_by_prior+0x1b8>
 33e:	0067a423          	sw	t1,8(a5)
 342:	0107a823          	sw	a6,16(a5)
 346:	86ae                	mv	a3,a1
 348:	8342                	mv	t1,a6
  CS(3, 5);
 34a:	00c75863          	bge	a4,a2,35a <resort_by_prior+0x1c8>
 34e:	01e7aa23          	sw	t5,20(a5)
 352:	01c7a623          	sw	t3,12(a5)
 356:	8732                	mv	a4,a2
 358:	8f72                	mv	t5,t3
  // Layer 7
  CS(3, 4);
 35a:	00d75663          	bge	a4,a3,366 <resort_by_prior+0x1d4>
 35e:	0067a623          	sw	t1,12(a5)
 362:	01e7a823          	sw	t5,16(a5)
}
 366:	4432                	lw	s0,12(sp)
 368:	44a2                	lw	s1,8(sp)
 36a:	4912                	lw	s2,4(sp)
 36c:	4982                	lw	s3,0(sp)
 36e:	0141                	addi	sp,sp,16
 370:	8082                	ret

00000372 <reg_irq_handler>:
  *PLIC_IRQ_ACTV |= actv_mask;
 372:	200008b7          	lui	a7,0x20000
 376:	0008a803          	lw	a6,0(a7) # 20000000 <_stack_top+0xfff0000>
  plic_irq_handlers[arr_idx] = _plic_irq_handler;
 37a:	10000737          	lui	a4,0x10000
  plic_irq_priorities[arr_idx] = priority;
 37e:	100007b7          	lui	a5,0x10000
  plic_irq_handlers[arr_idx] = _plic_irq_handler;
 382:	068a                	slli	a3,a3,0x2
 384:	04070713          	addi	a4,a4,64 # 10000040 <plic_irq_handlers>
  plic_irq_priorities[arr_idx] = priority;
 388:	00078793          	mv	a5,a5
  plic_irq_handlers[arr_idx] = _plic_irq_handler;
 38c:	9736                	add	a4,a4,a3
  plic_irq_priorities[arr_idx] = priority;
 38e:	97b6                	add	a5,a5,a3
  plic_irq_handlers[arr_idx] = _plic_irq_handler;
 390:	c308                	sw	a0,0(a4)
  plic_irq_priorities[arr_idx] = priority;
 392:	d38c                	sw	a1,32(a5)
  *PLIC_IRQ_ACTV |= actv_mask;
 394:	00c86833          	or	a6,a6,a2
 398:	0108a023          	sw	a6,0(a7)
  resort_by_prior();
 39c:	bbdd                	j	192 <resort_by_prior>
 39e:	0001                	nop

000003a0 <init_ring_buffer>:
#include "../include/ring_buff.h"

void init_ring_buffer(ring_buffer_t *rb) {
  // No malloc needed! The memory is already allocated as part of the struct.
  rb->head = 0;
 3a0:	10050023          	sb	zero,256(a0)
  rb->tail = 0;
 3a4:	100500a3          	sb	zero,257(a0)
}
 3a8:	8082                	ret

000003aa <reset_ring_buffer>:

void reset_ring_buffer(ring_buffer_t *rb) {
 3aa:	10050023          	sb	zero,256(a0)
 3ae:	100500a3          	sb	zero,257(a0)
 3b2:	8082                	ret

000003b4 <insert_rb>:
}

bool insert_rb(ring_buffer_t *rb, char c) {
  // Calculate what the next head position will be.
  // uint8_t naturally wraps from 255 back to 0.
  uint8_t next_head = (uint8_t)(rb->head + 1);
 3b4:	10054703          	lbu	a4,256(a0)

  // If the next head hits the tail, the buffer is full.
  // Note: This design sacrifices 1 byte of capacity, holding a max of 255
  // items.
  if (next_head == rb->tail) {
 3b8:	10154683          	lbu	a3,257(a0)
  uint8_t next_head = (uint8_t)(rb->head + 1);
 3bc:	00170793          	addi	a5,a4,1
 3c0:	0ff7f793          	zext.b	a5,a5
  if (next_head == rb->tail) {
 3c4:	00f68963          	beq	a3,a5,3d6 <insert_rb+0x22>
    return false;
  }

  rb->buffer[rb->head] = c;
 3c8:	972a                	add	a4,a4,a0
 3ca:	00b70023          	sb	a1,0(a4)
  rb->head = next_head;
 3ce:	10f50023          	sb	a5,256(a0)

  return true;
 3d2:	4505                	li	a0,1
 3d4:	8082                	ret
    return false;
 3d6:	4501                	li	a0,0
}
 3d8:	8082                	ret

000003da <pop_rb>:

bool pop_rb(ring_buffer_t *rb, char *c) {
  // If head and tail are at the same position, the buffer is empty.
  if (rb->head == rb->tail) {
 3da:	10154703          	lbu	a4,257(a0)
 3de:	10054683          	lbu	a3,256(a0)
bool pop_rb(ring_buffer_t *rb, char *c) {
 3e2:	87aa                	mv	a5,a0
  if (rb->head == rb->tail) {
 3e4:	00e68e63          	beq	a3,a4,400 <pop_rb+0x26>
    return false;
  }

  *c = rb->buffer[rb->tail];
 3e8:	972a                	add	a4,a4,a0
 3ea:	00074703          	lbu	a4,0(a4)
  rb->tail = (uint8_t)(rb->tail + 1); // Naturally wraps back to 0

  return true;
 3ee:	4505                	li	a0,1
  *c = rb->buffer[rb->tail];
 3f0:	00e58023          	sb	a4,0(a1)
  rb->tail = (uint8_t)(rb->tail + 1); // Naturally wraps back to 0
 3f4:	1017c703          	lbu	a4,257(a5) # 10000101 <rx_buffer+0xa1>
 3f8:	972a                	add	a4,a4,a0
 3fa:	10e780a3          	sb	a4,257(a5)
  return true;
 3fe:	8082                	ret
    return false;
 400:	4501                	li	a0,0
}
 402:	8082                	ret

00000404 <uart_isr>:
ring_buffer_t rx_buffer;
ring_buffer_t tx_buffer;

// Define the Interrupt Service Routine
void uart_isr(void) {
  uint32_t irq_status = *UART_IRQ_STATUS;
 404:	200027b7          	lui	a5,0x20002
 408:	07d1                	addi	a5,a5,20 # 20002014 <_stack_top+0xfff2014>
 40a:	439c                	lw	a5,0(a5)
void uart_isr(void) {
 40c:	7179                	addi	sp,sp,-48
 40e:	d606                	sw	ra,44(sp)

  // Handle Incoming Data
  if (irq_status & IRQ_RX_AVAIL) {
 410:	0017f713          	andi	a4,a5,1
 414:	e705                	bnez	a4,43c <uart_isr+0x38>
    char c = (char)(*UART_RX_FIFO);
    insert_rb(&rx_buffer, c); // Push to RX buffer
  }

  // Handle Outgoing Data
  if ((irq_status & IRQ_TX_EMPTY) && (*UART_IRQ_EN & IRQ_TX_EMPTY)) {
 416:	0027f713          	andi	a4,a5,2
 41a:	c711                	beqz	a4,426 <uart_isr+0x22>
 41c:	20002737          	lui	a4,0x20002
 420:	4b14                	lw	a3,16(a4)
 422:	8a89                	andi	a3,a3,2
 424:	e69d                	bnez	a3,452 <uart_isr+0x4e>
      *UART_IRQ_EN &= ~IRQ_TX_EMPTY;
    }
  }

  // Handle Hardware Errors
  if (irq_status & (IRQ_RX_OVERRUN | IRQ_FRAME_ERROR)) {
 426:	8bb1                	andi	a5,a5,12
 428:	c799                	beqz	a5,436 <uart_isr+0x32>
    *UART_CTRL |= CTRL_CLR_ERRORS; // Clear the hardware error states
 42a:	200027b7          	lui	a5,0x20002
 42e:	47d8                	lw	a4,12(a5)
 430:	00476713          	ori	a4,a4,4
 434:	c7d8                	sw	a4,12(a5)
  }
}
 436:	50b2                	lw	ra,44(sp)
 438:	6145                	addi	sp,sp,48
 43a:	8082                	ret
    char c = (char)(*UART_RX_FIFO);
 43c:	200026b7          	lui	a3,0x20002
 440:	428c                	lw	a1,0(a3)
    insert_rb(&rx_buffer, c); // Push to RX buffer
 442:	82018513          	addi	a0,gp,-2016 # 10000060 <rx_buffer>
 446:	0ff5f593          	zext.b	a1,a1
 44a:	c63e                	sw	a5,12(sp)
 44c:	37a5                	jal	3b4 <insert_rb>
 44e:	47b2                	lw	a5,12(sp)
 450:	b7d9                	j	416 <uart_isr+0x12>
    if (pop_rb(&tx_buffer, &c)) {
 452:	92418513          	addi	a0,gp,-1756 # 10000164 <tx_buffer>
 456:	01f10593          	addi	a1,sp,31
 45a:	c63e                	sw	a5,12(sp)
 45c:	3fbd                	jal	3da <pop_rb>
 45e:	20002737          	lui	a4,0x20002
 462:	47b2                	lw	a5,12(sp)
 464:	0741                	addi	a4,a4,16 # 20002010 <_stack_top+0xfff2010>
 466:	c519                	beqz	a0,474 <uart_isr+0x70>
      *UART_TX_FIFO = (uint32_t)c;
 468:	01f14683          	lbu	a3,31(sp)
 46c:	20002737          	lui	a4,0x20002
 470:	c354                	sw	a3,4(a4)
 472:	bf55                	j	426 <uart_isr+0x22>
      *UART_IRQ_EN &= ~IRQ_TX_EMPTY;
 474:	4314                	lw	a3,0(a4)
 476:	9af5                	andi	a3,a3,-3
 478:	c314                	sw	a3,0(a4)
 47a:	b775                	j	426 <uart_isr+0x22>

0000047c <uart_init>:

// Initialization function (Call this in main!)
void uart_init(void) {
 47c:	1141                	addi	sp,sp,-16
  init_ring_buffer(&rx_buffer);
 47e:	82018513          	addi	a0,gp,-2016 # 10000060 <rx_buffer>
void uart_init(void) {
 482:	c606                	sw	ra,12(sp)
  init_ring_buffer(&rx_buffer);
 484:	3f31                	jal	3a0 <init_ring_buffer>
  init_ring_buffer(&tx_buffer);
 486:	82018513          	addi	a0,gp,-2016 # 10000060 <rx_buffer>
 48a:	10450513          	addi	a0,a0,260
 48e:	3f09                	jal	3a0 <init_ring_buffer>

  // Register ISR with the MINA PLIC at priority 1
  reg_UART_irq(uart_isr, 1);
 490:	4605                	li	a2,1
 492:	85b2                	mv	a1,a2
 494:	40400513          	li	a0,1028
 498:	4681                	li	a3,0
 49a:	3de1                	jal	372 <reg_irq_handler>

  // Enable the RX interrupt permanently so we never miss incoming data
  *UART_IRQ_EN |= IRQ_RX_AVAIL;
 49c:	200027b7          	lui	a5,0x20002
 4a0:	4b98                	lw	a4,16(a5)
}
 4a2:	40b2                	lw	ra,12(sp)
  *UART_IRQ_EN |= IRQ_RX_AVAIL;
 4a4:	00176713          	ori	a4,a4,1
 4a8:	cb98                	sw	a4,16(a5)
}
 4aa:	0141                	addi	sp,sp,16
 4ac:	8082                	ret

000004ae <uart_putc>:

void uart_putc(char c) {
  // 1. Temporarily disable TX interrupts to avoid race conditions
  *UART_IRQ_EN &= ~IRQ_TX_EMPTY;
 4ae:	200027b7          	lui	a5,0x20002
 4b2:	4b94                	lw	a3,16(a5)

  // 2. If the software buffer is empty AND the hardware TX FIFO is empty,
  // bypass the software buffer to kickstart the hardware transmission.
  if (tx_buffer.head == tx_buffer.tail && (*UART_STATUS & STATUS_TX_EMPTY)) {
 4b4:	82018713          	addi	a4,gp,-2016 # 10000060 <rx_buffer>
 4b8:	20474583          	lbu	a1,516(a4) # 20002204 <_stack_top+0xfff2204>
 4bc:	20574603          	lbu	a2,517(a4)
  *UART_IRQ_EN &= ~IRQ_TX_EMPTY;
 4c0:	ffd6f713          	andi	a4,a3,-3
 4c4:	cb98                	sw	a4,16(a5)
  if (tx_buffer.head == tx_buffer.tail && (*UART_STATUS & STATUS_TX_EMPTY)) {
 4c6:	02c58863          	beq	a1,a2,4f6 <uart_putc+0x48>
void uart_putc(char c) {
 4ca:	1141                	addi	sp,sp,-16
 4cc:	c226                	sw	s1,4(sp)
 4ce:	c422                	sw	s0,8(sp)
 4d0:	c606                	sw	ra,12(sp)
 4d2:	842a                	mv	s0,a0
 4d4:	92418493          	addi	s1,gp,-1756 # 10000164 <tx_buffer>
    *UART_TX_FIFO = (uint32_t)c;
  } else {
    // Otherwise, hardware is busy. Queue it in the software buffer.
    while (!insert_rb(&tx_buffer, c)) {
 4d8:	85a2                	mv	a1,s0
 4da:	8526                	mv	a0,s1
 4dc:	3de1                	jal	3b4 <insert_rb>
 4de:	dd6d                	beqz	a0,4d8 <uart_putc+0x2a>
      // Busy wait only if the 256-byte buffer is completely full
    }
  }

  // 3. Re-enable TX interrupts so the ISR handles the rest
  *UART_IRQ_EN |= IRQ_TX_EMPTY;
 4e0:	200027b7          	lui	a5,0x20002
 4e4:	4b98                	lw	a4,16(a5)
}
 4e6:	40b2                	lw	ra,12(sp)
 4e8:	4422                	lw	s0,8(sp)
  *UART_IRQ_EN |= IRQ_TX_EMPTY;
 4ea:	00276713          	ori	a4,a4,2
 4ee:	cb98                	sw	a4,16(a5)
}
 4f0:	4492                	lw	s1,4(sp)
 4f2:	0141                	addi	sp,sp,16
 4f4:	8082                	ret
  if (tx_buffer.head == tx_buffer.tail && (*UART_STATUS & STATUS_TX_EMPTY)) {
 4f6:	200027b7          	lui	a5,0x20002
 4fa:	07a1                	addi	a5,a5,8 # 20002008 <_stack_top+0xfff2008>
 4fc:	439c                	lw	a5,0(a5)
 4fe:	8b91                	andi	a5,a5,4
 500:	d7e9                	beqz	a5,4ca <uart_putc+0x1c>
    *UART_TX_FIFO = (uint32_t)c;
 502:	200027b7          	lui	a5,0x20002
 506:	c3c8                	sw	a0,4(a5)
  *UART_IRQ_EN |= IRQ_TX_EMPTY;
 508:	200027b7          	lui	a5,0x20002
 50c:	4b98                	lw	a4,16(a5)
 50e:	00276713          	ori	a4,a4,2
 512:	cb98                	sw	a4,16(a5)
 514:	8082                	ret

00000516 <uart_getc>:

char uart_getc(void) {
 516:	1101                	addi	sp,sp,-32
 518:	cc22                	sw	s0,24(sp)
 51a:	ce06                	sw	ra,28(sp)
 51c:	82018413          	addi	s0,gp,-2016 # 10000060 <rx_buffer>
  char c;
  // Block only when the software buffer is completely empty
  while (!pop_rb(&rx_buffer, &c)) {
 520:	00f10593          	addi	a1,sp,15
 524:	8522                	mv	a0,s0
 526:	3d55                	jal	3da <pop_rb>
 528:	dd65                	beqz	a0,520 <uart_getc+0xa>
    // Busy wait until the ISR receives new data
  }
  return c;
}
 52a:	40f2                	lw	ra,28(sp)
 52c:	4462                	lw	s0,24(sp)
 52e:	00f14503          	lbu	a0,15(sp)
 532:	6105                	addi	sp,sp,32
 534:	8082                	ret

00000536 <uart_puts>:

void uart_puts(const char *str) {
 536:	1141                	addi	sp,sp,-16
 538:	c422                	sw	s0,8(sp)
 53a:	c606                	sw	ra,12(sp)
 53c:	842a                	mv	s0,a0
  while (*str != '\0') {
 53e:	00054503          	lbu	a0,0(a0)
 542:	c511                	beqz	a0,54e <uart_puts+0x18>
    uart_putc(*str);
 544:	37ad                	jal	4ae <uart_putc>
  while (*str != '\0') {
 546:	00144503          	lbu	a0,1(s0)
    str++;
 54a:	0405                	addi	s0,s0,1
  while (*str != '\0') {
 54c:	fd65                	bnez	a0,544 <uart_puts+0xe>
  }
}
 54e:	40b2                	lw	ra,12(sp)
 550:	4422                	lw	s0,8(sp)
 552:	0141                	addi	sp,sp,16
 554:	8082                	ret
