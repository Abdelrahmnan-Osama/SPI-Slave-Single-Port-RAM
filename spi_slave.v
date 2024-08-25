module SPI_Slave (
    MOSI,
    MISO,
    SS_n,
    SCK,
    rst_n,
    rx_data,
    rx_valid,
    tx_data,
    tx_valid
);

  parameter IDLE = 3'b000;
  parameter CHK_CMD = 3'b001;
  parameter READ_ADD = 3'b010;
  parameter READ_DATA = 3'b011;
  parameter WRITE = 3'b100;

  input MOSI, SS_n;
  input SCK, rst_n;
  output reg MISO;

  input [7:0] tx_data;
  input tx_valid;
  output reg [9:0] rx_data;
  output reg rx_valid;

  reg [3:0] wr_counter;
  reg [2:0] rd_counter;
  reg read_addr_received;
  wire invalid_wr, invalid_rd_addr, invalid_rd_data;

  (* fsm_encoding = "gray"*)
  reg [2:0] cs, ns;


  //handle invalid cases
  assign invalid_wr = (cs == WRITE) && (wr_counter == 7) && (rx_data[9:8] != 2'b00) && (rx_data[9:8] != 2'b01);
  assign invalid_rd_addr = (cs == READ_ADD) && (wr_counter == 7) && (rx_data[9:8] != 2'b10);
  assign invalid_rd_data = (cs == READ_DATA) && (wr_counter == 7) && (rx_data[9:8] != 2'b11);

  // next state logic
  always @(*) begin
    case (cs)
      IDLE: begin
        if (~SS_n) begin
          ns = CHK_CMD;
        end else begin
          ns = IDLE;
        end
      end
      CHK_CMD: begin
        if (~SS_n && MOSI && read_addr_received) begin
          ns = READ_DATA;
        end else if (~SS_n && MOSI && ~read_addr_received) begin
          ns = READ_ADD;
        end else if (~SS_n && ~MOSI) begin
          ns = WRITE;
        end else begin
          ns = IDLE;
        end
      end
      WRITE: begin
        if (SS_n || wr_counter == 0 || invalid_wr) begin
          ns = IDLE;
        end else begin
          ns = WRITE;
        end
      end
      READ_ADD: begin
        if (SS_n || wr_counter == 0 || invalid_rd_addr) begin
          ns = IDLE;
        end else begin
          ns = READ_ADD;
        end
      end
      READ_DATA: begin
        if (SS_n || rd_counter == 0 || invalid_rd_data) begin
          ns = IDLE;
        end else begin
          ns = READ_DATA;
        end
      end
      default: ns = IDLE;
    endcase
  end

  // state memory 
  always @(posedge SCK) begin
    if (~rst_n) begin
      cs <= IDLE;
    end else begin
      cs <= ns;
    end
  end

  // output logic
  always @(posedge SCK) begin
    if (~rst_n) begin
      wr_counter <= 0;
      rd_counter <= 0;
      rx_data <= 0;
      read_addr_received <= 0;
      MISO <= 0;
      rx_valid <= 0;
    end else begin
      case (cs)
        IDLE: begin
          wr_counter <= 9;
          rd_counter <= 7;
          rx_data <= 0;
          rx_valid <= 0;
          MISO <= 0;
        end
        WRITE: begin
          // drive rx_data bus with parallel write address / data
          rx_data[wr_counter] <= MOSI;
          wr_counter <= (wr_counter > 0) ? wr_counter - 1 : 0;
          // check data is valid or not
          rx_valid <= (wr_counter == 0) ? 1 : 0;
        end
        READ_ADD: begin
          // drive rx_data bus with parallel read address
          rx_data[wr_counter] <= MOSI;
          wr_counter <= (wr_counter > 0) ? wr_counter - 1 : 0;
          // check data is valid or not
          rx_valid <= (wr_counter == 0) ? 1 : 0;
          // indicate address is received
          read_addr_received <= (wr_counter == 0) ? 1 : 0;
        end
        READ_DATA: begin
          // indicate received address is used and waiting for new address
          read_addr_received <= 0;
          // check data is valid or not
          rx_valid <= (wr_counter == 0) ? 1 : 0;
          if (wr_counter != 0) begin
            // drive rx_data bus with parallel read command & dummy data
            rx_data[wr_counter] <= MOSI;
            wr_counter <= (wr_counter > 0) ? wr_counter - 1 : 0;
          end else if (tx_valid) begin
            // receive parallel data and convert it to serial on MISO port
            MISO <= tx_data[rd_counter];
            rd_counter <= rd_counter - 1;
          end
        end
      endcase
    end
  end

endmodule
