module muxed_dual_port_ram #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 10 // 1024 words
)(
    input  wire clk,
    input  wire mode_pin, // 0 = AXI Port B, 1 = Raw Port B

    // Port A (Always AXI BRAM Controller interface)
    input  wire                      axi_a_en,
    input  wire [(DATA_WIDTH/8)-1:0] axi_a_we,
    input  wire [ADDR_WIDTH-1:0]     axi_a_addr,
    input  wire [DATA_WIDTH-1:0]     axi_a_din,
    output reg  [DATA_WIDTH-1:0]     axi_a_dout,

    // Port B (AXI BRAM Controller interface)
    input  wire                      axi_b_en,
    input  wire [(DATA_WIDTH/8)-1:0] axi_b_we,
    input  wire [ADDR_WIDTH-1:0]     axi_b_addr,
    input  wire [DATA_WIDTH-1:0]     axi_b_din,
    output wire [DATA_WIDTH-1:0]     axi_b_dout,

    // Port B (Raw Interface)
    input  wire                      raw_b_en,
    input  wire [(DATA_WIDTH/8)-1:0] raw_b_we,
    input  wire [ADDR_WIDTH-1:0]     raw_b_addr,
    input  wire [DATA_WIDTH-1:0]     raw_b_din,
    output wire [DATA_WIDTH-1:0]     raw_b_dout
);

    // Memory Array
    reg [DATA_WIDTH-1:0] ram [0:(1<<ADDR_WIDTH)-1];

    // Internal Muxed Signals for Port B
    reg                      port_b_en;
    reg [(DATA_WIDTH/8)-1:0] port_b_we;
    reg [ADDR_WIDTH-1:0]     port_b_addr;
    reg [DATA_WIDTH-1:0]     port_b_din;
    reg [DATA_WIDTH-1:0]     port_b_dout_reg;

    // Combinational Mux for Port B
    always @(*) begin
        if (mode_pin) begin
            // High: Expose Raw Interface
            port_b_en   = raw_b_en;
            port_b_we   = raw_b_we;
            port_b_addr = raw_b_addr;
            port_b_din  = raw_b_din;
        end else begin
            // Low: Expose AXI Interface
            port_b_en   = axi_b_en;
            port_b_we   = axi_b_we;
            port_b_addr = axi_b_addr;
            port_b_din  = axi_b_din;
        end
    end

    assign raw_b_dout = port_b_dout_reg;
    assign axi_b_dout = port_b_dout_reg;

    integer i;

    // RAM Port A Logic (Always AXI)
    always @(posedge clk) begin
        if (axi_a_en) begin
            for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
                if (axi_a_we[i]) begin
                    ram[axi_a_addr][i*8 +: 8] <= axi_a_din[i*8 +: 8];
                end
            end
            axi_a_dout <= ram[axi_a_addr];
        end
    end

    integer j;

    // RAM Port B Logic (Muxed)
    always @(posedge clk) begin
        if (port_b_en) begin
            for (j = 0; j < DATA_WIDTH/8; j = j + 1) begin
                if (port_b_we[j]) begin
                    ram[port_b_addr][j*8 +: 8] <= port_b_din[j*8 +: 8];
                end
            end
            port_b_dout_reg <= ram[port_b_addr];
        end
    end

endmodule