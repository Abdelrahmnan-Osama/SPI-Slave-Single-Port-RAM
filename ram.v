module RAM (
    din,
    clk,
    rst_n,
    rx_valid,
    dout,
    tx_valid
);

  parameter MEM_DEPTH = 256;
  parameter ADDR_SIZE = 8;

  input [9:0] din;
  input clk, rst_n, rx_valid;
  output reg [7:0] dout;
  output reg tx_valid;

  reg [7:0] mem[MEM_DEPTH-1:0];
  reg [ADDR_SIZE-1:0] addr;


  // memory read and write operations
  always @(posedge clk) begin
    if (~rst_n) begin
      dout <= 0;
      addr <= 0;
      tx_valid <= 0;
    end else begin
      case ({
        din[9:8], rx_valid
      })
        3'b001: begin
          addr <= din[7:0];
        end
        3'b011: begin
          mem[addr] <= din[7:0];
        end
        3'b101: begin
          addr <= din[7:0];
        end
        3'b111: begin
          dout <= mem[addr];
          tx_valid <= 1;
        end
        default: begin
          dout <= 0;
          tx_valid <= 0;
        end
      endcase
    end
  end

endmodule
