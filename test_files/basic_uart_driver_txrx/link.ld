OUTPUT_ARCH( "riscv" )
ENTRY( _start )

MEMORY
{
  /* Accessible by Bootloader and CPU. The bootloader places your binary here. */
  SHARED_RAM (rx) : ORIGIN = 0x00000000, LENGTH = 16K   /* Replace with actual values */
  
  /* Accessible ONLY by CPU. Used for runtime data, stack, and heap. */
  CPU_RAM (rwx)   : ORIGIN = 0x10000000, LENGTH = 64K  /* Replace with actual values */
}

SECTIONS
{
  /* 1. Code and read-only data execute directly from SHARED_RAM */
  .text : {
    *(.text.init)
    *(.text .text.*)
  } >SHARED_RAM

  .rodata : {
    *(.rodata .rodata.*)
  } >SHARED_RAM

  /* 2. Initialized data: Run in CPU_RAM, but stored in SHARED_RAM */
  .data : {
    . = ALIGN(8);
    _sdata = .;        /* Run-time start address in CPU_RAM */
    
    *(.data .data.*)
    
    PROVIDE( __global_pointer$ = . + 0x800 );
    *(.sdata .sdata.*) 
    
    . = ALIGN(8);
    _edata = .;        /* Run-time end address in CPU_RAM */
  } >CPU_RAM AT>SHARED_RAM

  /* Crucial: Capture the physical load address in SHARED_RAM so crt0.S can copy it */
  _data_load_start = LOADADDR(.data);

  /* 3. Uninitialized data: Assigned to CPU_RAM. No load payload required. */
  .bss : {
    . = ALIGN(8);
    _sbss = .;         
    *(.sbss .sbss.*)
    *(.bss .bss.*)
    . = ALIGN(8);
    _ebss = .;         
  } >CPU_RAM

  /* 4. Define the top of the stack at the very end of the larger CPU_RAM */
  PROVIDE( _stack_top = ORIGIN(CPU_RAM) + LENGTH(CPU_RAM) );
}
