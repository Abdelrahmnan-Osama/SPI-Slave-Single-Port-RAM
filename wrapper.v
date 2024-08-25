module SPI_wrapper (
    MOSI,
    MISO,
    SS_n,
    clk,
    rst_n
);

  input MOSI, SS_n, clk, rst_n;
  output MISO;

  wire [9:0] rx_data;
  wire [7:0] tx_data;
  wire rx_valid, tx_valid;

  SPI_Slave slave (
      .MOSI(MOSI),
      .MISO(MISO),
      .SS_n(SS_n),
      .SCK(clk),
      .rst_n(rst_n),
      .rx_data(rx_data),
      .tx_data(tx_data),
      .rx_valid(rx_valid),
      .tx_valid(tx_valid)
  );

  RAM ram (
      .din(rx_data),
      .rx_valid(rx_valid),
      .dout(tx_data),
      .tx_valid(tx_valid),
      .clk(clk),
      .rst_n(rst_n)
  );

endmodule
