// Code your testbench here
// or browse Examples
module SR_TB();
  
  wire out;
  reg i0, i1, i2, i3, i4, i5, i6, i7, c1, c2, c3;
  reg clk;
  reg [31:0] tb_data[0:22];
  
  initial clk = 0;
  always #10 clk = ~clk;
  
  initial
    $readmemh("configure3.mem", tb_data);
  
  shift_register sr_inst(.sh(c1), .shl(c2), .l(c3), .d0(i0), .d1(i1), .d2(i2), .d3(i3), .d4(i4), .d5(i5), .d6(i6), .d7(i7), .clock(clk), .si(1'b0), .q0(out));
  
  assign sr_inst.sb1.configure = tb_data[0][15:0];
  assign sr_inst.sb2.configure = tb_data[0][15:0];
  assign sr_inst.sb3.configure = tb_data[0][15:0];
  
  assign sr_inst.sb71.configure = tb_data[1][15:0];
  assign sr_inst.sb72.configure = tb_data[2][15:0];
  
  assign sr_inst.sb61.configure = tb_data[1][15:0];
  assign sr_inst.sb62.configure = tb_data[2][15:0];
  
  assign sr_inst.sb51.configure = tb_data[1][15:0];
  assign sr_inst.sb52.configure = tb_data[2][15:0];
  
  assign sr_inst.sb41.configure = tb_data[1][15:0];
  assign sr_inst.sb42.configure = tb_data[2][15:0];
  
  assign sr_inst.sb31.configure = tb_data[1][15:0];
  assign sr_inst.sb32.configure = tb_data[2][15:0];
  
  assign sr_inst.sb21.configure = tb_data[1][15:0];
  assign sr_inst.sb22.configure = tb_data[2][15:0];
  
  assign sr_inst.sb11.configure = tb_data[1][15:0];
  assign sr_inst.sb12.configure = tb_data[2][15:0];
  
  assign sr_inst.sb01.configure = tb_data[1][15:0];
  assign sr_inst.sb02.configure = tb_data[2][15:0];
  
  assign sr_inst.lt71.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt61.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt51.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt41.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt31.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt21.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt11.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt01.mem = {tb_data[4][0], tb_data[3]};
  
  assign sr_inst.lt73.mem = {tb_data[6][0], tb_data[5]};
  assign sr_inst.lt63.mem = {tb_data[6][0], tb_data[5]};
  assign sr_inst.lt53.mem = {tb_data[6][0], tb_data[5]};
  assign sr_inst.lt43.mem = {tb_data[6][0], tb_data[5]};
  assign sr_inst.lt33.mem = {tb_data[6][0], tb_data[5]};
  assign sr_inst.lt23.mem = {tb_data[6][0], tb_data[5]};
  assign sr_inst.lt13.mem = {tb_data[6][0], tb_data[5]};
  assign sr_inst.lt03.mem = {tb_data[6][0], tb_data[5]};
  
  assign sr_inst.lt72.mem = {tb_data[8][0], tb_data[7]};
  assign sr_inst.lt62.mem = {tb_data[10][0], tb_data[9]};
  assign sr_inst.lt52.mem = {tb_data[12][0], tb_data[11]};
  assign sr_inst.lt42.mem = {tb_data[14][0], tb_data[13]};
  assign sr_inst.lt32.mem = {tb_data[16][0], tb_data[15]};
  assign sr_inst.lt22.mem = {tb_data[18][0], tb_data[17]};
  assign sr_inst.lt12.mem = {tb_data[20][0], tb_data[19]};
  assign sr_inst.lt02.mem = {tb_data[22][0], tb_data[21]};
  
  initial
    begin
      i0 = 1'b0;
      i1 = 1'b0;
      i2 = 1'b0;
      i3 = 1'b0;
      i4 = 1'b0;
      i5 = 1'b0;
      i6 = 1'b0;
      i7 = 1'b1;
      c1 = 1'b1;
      c2 = 1'b1;
      c3 = 1'b1;
      
      #20
      $display("i0 = %b, i1 = %b, i2 = %b, i3 = %b, i4 = %b, i5 = %b, i6 = %b, i7 = %b, c1 = %b, c2 = %b, c3 = %b", i0, i1, i2, i3, i4, i5, i6, i7, c1, c2 ,c3);
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      i0 = 1'b0;
      i1 = 1'b0;
      i2 = 1'b0;
      i3 = 1'b0;
      i4 = 1'b0;
      i5 = 1'b0;
      i6 = 1'b0;
      i7 = 1'b0;
      c1 = 1'b1;
      c2 = 1'b1;
      c3 = 1'b1;
      
      #20
      $display("i0 = %b, i1 = %b, i2 = %b, i3 = %b, i4 = %b, i5 = %b, i6 = %b, i7 = %b, c1 = %b, c2 = %b, c3 = %b", i0, i1, i2, i3, i4, i5, i6, i7, c1, c2 ,c3);
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      i0 = 1'b0;
      i1 = 1'b0;
      i2 = 1'b0;
      i3 = 1'b1;
      i4 = 1'b0;
      i5 = 1'b0;
      i6 = 1'b0;
      i7 = 1'b1;
      c1 = 1'b0;
      c2 = 1'b0;
      c3 = 1'b1;
      
      #20
      $display("i0 = %b, i1 = %b, i2 = %b, i3 = %b, i4 = %b, i5 = %b, i6 = %b, i7 = %b, c1 = %b, c2 = %b, c3 = %b", i0, i1, i2, i3, i4, i5, i6, i7, c1, c2 ,c3);
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
      #20
      $display("time = %3d, out = %b",$time, out);
      
    end
  
  initial
    #1000 $finish;
  
  initial
    begin
      $dumpfile("mux.vcd");
      $dumpvars;
    end
  
endmodule
