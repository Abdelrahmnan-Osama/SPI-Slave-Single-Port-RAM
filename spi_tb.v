module tb ();
  reg MOSI, SS_n, clk, rst_n;
  wire MISO;

  SPI_wrapper wrapper (
      MOSI,
      MISO,
      SS_n,
      clk,
      rst_n
  );

  initial begin
    clk = 0;
    forever begin
      #20 clk = ~clk;
    end
  end

  initial begin
    ////////////////////////////////////////
    // Test reset and memory initialization
    ////////////////////////////////////////
    rst_n = 0;
    $readmemb("mem.dat", wrapper.ram.mem, 0, 255);
    repeat (5) begin
      MOSI = $random;
      SS_n = $random;
      @(negedge clk);
    end

    ///////////////////////////////////////
    // Test writing
    //////////////////////////////////////
    // deactivate reset & activate slave select
    rst_n = 1;
    SS_n  = 0;

    // test write-address command
    MOSI  = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    repeat (9) begin
      MOSI = $random;
      @(negedge clk);
    end

    // test write data
    MOSI = $random;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    repeat (8) begin
      MOSI = $random;
      @(negedge clk);
    end

    //////////////////////////////////
    // Test memory read functionality
    //////////////////////////////////
    // test read-address holding command
    MOSI = $random;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    repeat (8) begin
      MOSI = $random;
      @(negedge clk);
    end

    // test read data
    MOSI = $random;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    repeat (20) begin
      MOSI = $random;
      @(negedge clk);
    end

    ///////////////////////
    // Test invalid cases
    //////////////////////
    // test write-address command
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    repeat (9) begin
      MOSI = $random;
      @(negedge clk);
    end

    // test write data
    MOSI = $random;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    repeat (8) begin
      MOSI = $random;
      @(negedge clk);
    end

    // test invalid read-address holding command
    MOSI = $random;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    repeat (8) begin
      MOSI = $random;
      @(negedge clk);
    end

    // test read-address holding command
    MOSI = $random;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 0;
    @(negedge clk);
    repeat (8) begin
      MOSI = $random;
      @(negedge clk);
    end

    // test read data
    MOSI = $random;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 1;
    @(negedge clk);
    MOSI = 0;
    repeat (30) begin
      MOSI = $random;
      @(negedge clk);
    end

    //////////////////////////////////////////////////
    // test randomized data/address writing & reading
    //////////////////////////////////////////////////
    // randomized slave select
    repeat (50) begin
      MOSI = $random;
      SS_n = $random;
      @(negedge clk);
    end
    $stop;
  end
endmodule
