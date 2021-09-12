// Code your testbench here
// or browse Examples
module SR_TB();
  
  wire sum0, sum1, sum2, sum3, cout;
  reg n10, n11, n12, n13, n20, n21, n22, n23, cin;
  reg clk;
  reg [31:0] tb_data[0:50];
  
  initial clk = 0;
  always #10 clk = ~clk;
  
  initial
    $readmemh("configure2.mem", tb_data);
  
  shift_register sr_inst(.d0(n10), .d1(n11), .d2(n12), .l(n13), .d3(n20), .d4(n21), .d5(n22), .shl(n23), .q7(sum0), .q5(sum1), .q3(sum2), .q1(sum3), .d7(cin), .q0(cout), .d6(cin), .clock(clk), .si(n12), .sh(n13));
  
  assign sr_inst.sb1.configure = tb_data[0][15:0];
  assign sr_inst.sb2.configure = tb_data[0][15:0];
  assign sr_inst.sb3.configure = tb_data[0][15:0];
  
  assign sr_inst.sb71.configure = tb_data[1][15:0];
  assign sr_inst.sb72.configure = tb_data[2][15:0];
  assign sr_inst.lt71.mem = {tb_data[4][0], tb_data[3]};
  assign sr_inst.lt73.mem = {tb_data[6][0], tb_data[5]};
  
  assign sr_inst.sb61.configure = tb_data[7][15:0];
  assign sr_inst.sb62.configure = tb_data[8][15:0];
  assign sr_inst.lt61.mem = {tb_data[10][0], tb_data[9]};
  assign sr_inst.lt63.mem = {tb_data[12][0], tb_data[11]};
  
  assign sr_inst.sb51.configure = tb_data[13][15:0];
  assign sr_inst.sb52.configure = tb_data[14][15:0];
  assign sr_inst.lt51.mem = {tb_data[16][0], tb_data[15]};
  assign sr_inst.lt53.mem = {tb_data[18][0], tb_data[17]};
  
  assign sr_inst.sb41.configure = tb_data[19][15:0];
  assign sr_inst.sb42.configure = tb_data[20][15:0];
  assign sr_inst.lt41.mem = {tb_data[22][0], tb_data[21]};
  assign sr_inst.lt43.mem = {tb_data[24][0], tb_data[23]};
  
  assign sr_inst.sb31.configure = tb_data[25][15:0];
  assign sr_inst.sb32.configure = tb_data[26][15:0];
  assign sr_inst.lt31.mem = {tb_data[28][0], tb_data[27]};
  assign sr_inst.lt33.mem = {tb_data[30][0], tb_data[29]};
  
  assign sr_inst.sb21.configure = tb_data[31][15:0];
  assign sr_inst.sb22.configure = tb_data[32][15:0];
  assign sr_inst.lt21.mem = {tb_data[34][0], tb_data[33]};
  assign sr_inst.lt23.mem = {tb_data[36][0], tb_data[35]};
  
  assign sr_inst.sb11.configure = tb_data[37][15:0];
  assign sr_inst.sb12.configure = tb_data[38][15:0];
  assign sr_inst.lt11.mem = {tb_data[40][0], tb_data[39]};
  assign sr_inst.lt13.mem = {tb_data[42][0], tb_data[41]};
  
  assign sr_inst.sb01.configure = tb_data[43][15:0];
  assign sr_inst.sb02.configure = tb_data[44][15:0];
  assign sr_inst.lt01.mem = {tb_data[46][0], tb_data[45]};
  assign sr_inst.lt03.mem = {tb_data[48][0], tb_data[47]};
  
  assign sr_inst.lt72.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt62.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt52.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt42.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt32.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt22.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt12.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt02.mem = {tb_data[50][0], tb_data[49]};
  
  initial
    begin
      n10 = 1'b1;
      n11 = 1'b1;
      n12 = 1'b1;
      n13 = 1'b1;
      n20 = 1'b1;
      n21 = 1'b1;
      n22 = 1'b1;
      n23 = 1'b1;
      cin = 1'b0;
      
      #20
      $display("cin = %b", cin);
      $display("n13 = %b, n12 = %b, n11 = %b, n10 = %b",n13, n12, n11, n10);
      $display("n23 = %b, n22 = %b, n21 = %b, n20 = %b",n23, n22, n21, n20);
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      n10 = 1'b1;
      n11 = 1'b1;
      n12 = 1'b1;
      n13 = 1'b1;
      n20 = 1'b0;
      n21 = 1'b1;
      n22 = 1'b0;
      n23 = 1'b0;
      cin = 1'b1;
      
      #20
      $display("cin = %b", cin);
      $display("n13 = %b, n12 = %b, n11 = %b, n10 = %b",n13, n12, n11, n10);
      $display("n23 = %b, n22 = %b, n21 = %b, n20 = %b",n23, n22, n21, n20);
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      n10 = 1'b0;
      n11 = 1'b0;
      n12 = 1'b0;
      n13 = 1'b0;
      n20 = 1'b0;
      n21 = 1'b0;
      n22 = 1'b0;
      n23 = 1'b0;
      cin = 1'b1;
      
      #20
      $display("cin = %b", cin);
      $display("n13 = %b, n12 = %b, n11 = %b, n10 = %b",n13, n12, n11, n10);
      $display("n23 = %b, n22 = %b, n21 = %b, n20 = %b",n23, n22, n21, n20);
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
      #20
      $display("time = %3d, sum3 = %b, sum2 = %b, sum1 = %b, sum0 = %b, cout = %b", $time, sum3, sum2, sum1, sum0, cout);
      
    end
  
  initial
    #400 $finish;
  
  initial
    begin
      $dumpfile("ba.vcd");
      $dumpvars;
    end
  
endmodule
