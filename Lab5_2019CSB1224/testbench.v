// Code your testbench here
// or browse Examples
module SR_TB();
  
  reg rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rd7, rd6, rd5, rd4, rd3, rd2, rd1, rd0, rsi, rsh, rshl, rl, clk, rso;
  reg[31:0] tb_data[0:55];
  
  initial clk = 0;
  always #10 clk = ~clk;
  
  initial
    $readmemh("configure.mem", tb_data);
  
  shift_register sr_inst(.q7(rq7), .q6(rq6), .q5(rq5), .q4(rq4), .q3(rq3), .q2(rq2), .q1(rq1), .q0(rq0), .so(rso), .d7(rd7), .d6(rd6), .d5(rd5), .d4(rd4), .d3(rd3), .d2(rd2), .d1(rd1), .d0(rd0), .si(rsi), .sh(rsh), .shl(rshl), .l(rl), .clock(clk));
  
  assign sr_inst.sb7.configure = tb_data[6][15:0];
  assign sr_inst.lt71.mem = {tb_data[1][0], tb_data[0]};
  assign sr_inst.lt72.mem = {tb_data[3][0], tb_data[2]};
  assign sr_inst.lt73.mem = {tb_data[5][0], tb_data[4]};
  

  
  assign sr_inst.sb6.configure = tb_data[13][15:0];
  assign sr_inst.lt61.mem = {tb_data[8][0], tb_data[7]};
  assign sr_inst.lt62.mem = {tb_data[10][0], tb_data[9]};
  assign sr_inst.lt63.mem = {tb_data[12][0], tb_data[11]};
  

  
  assign sr_inst.sb5.configure = tb_data[20][15:0];
  assign sr_inst.lt51.mem = {tb_data[15][0], tb_data[14]};
  assign sr_inst.lt52.mem = {tb_data[17][0], tb_data[16]};
  assign sr_inst.lt53.mem = {tb_data[19][0], tb_data[18]};
  
  
  assign sr_inst.sb4.configure = tb_data[27][15:0];
  assign sr_inst.lt41.mem = {tb_data[22][0], tb_data[21]};
  assign sr_inst.lt42.mem = {tb_data[24][0], tb_data[23]};
  assign sr_inst.lt43.mem = {tb_data[26][0], tb_data[25]};
  

  
  assign sr_inst.sb3.configure = tb_data[34][15:0];
  assign sr_inst.lt31.mem = {tb_data[29][0], tb_data[28]};
  assign sr_inst.lt32.mem = {tb_data[31][0], tb_data[30]};
  assign sr_inst.lt33.mem = {tb_data[33][0], tb_data[32]};
  

  
  assign sr_inst.sb2.configure = tb_data[41][15:0];
  assign sr_inst.lt21.mem = {tb_data[36][0], tb_data[35]};
  assign sr_inst.lt22.mem = {tb_data[38][0], tb_data[37]};
  assign sr_inst.lt23.mem = {tb_data[40][0], tb_data[39]};
  

  assign sr_inst.sb1.configure = tb_data[48][15:0];
  assign sr_inst.lt11.mem = {tb_data[43][0], tb_data[42]};
  assign sr_inst.lt12.mem = {tb_data[45][0], tb_data[44]};
  assign sr_inst.lt13.mem = {tb_data[47][0], tb_data[46]};
  
 
  
  assign sr_inst.sb0.configure = tb_data[55][15:0];
  assign sr_inst.lt01.mem = {tb_data[50][0], tb_data[49]};
  assign sr_inst.lt02.mem = {tb_data[52][0], tb_data[51]};
  assign sr_inst.lt03.mem = {tb_data[54][0], tb_data[53]};
  
  
  initial
    begin
      sr_inst.lt71.q = 1'b0;
      sr_inst.lt71.qbar = 1'b1;
      sr_inst.lt72.q = 1'b0;
      sr_inst.lt72.qbar = 1'b1;
      sr_inst.lt73.q = 1'b0;
      sr_inst.lt73.qbar = 1'b1;
      
      
      sr_inst.lt61.q = 1'b0;
      sr_inst.lt61.qbar = 1'b1;
      sr_inst.lt62.q = 1'b0;
      sr_inst.lt62.qbar = 1'b1;
      sr_inst.lt63.q = 1'b0;
      sr_inst.lt63.qbar = 1'b1;
      
     
      sr_inst.lt51.q = 1'b0;
      sr_inst.lt51.qbar = 1'b1;
      sr_inst.lt52.q = 1'b0;
      sr_inst.lt52.qbar = 1'b1;
      sr_inst.lt53.q = 1'b0;
      sr_inst.lt53.qbar = 1'b1;
      
      
      
      sr_inst.lt41.q = 1'b0;
      sr_inst.lt41.qbar = 1'b1;
      sr_inst.lt42.q = 1'b0;
      sr_inst.lt42.qbar = 1'b1;
      sr_inst.lt43.q = 1'b0;
      sr_inst.lt43.qbar = 1'b1;
      
      
      
      sr_inst.lt31.q = 1'b0;
      sr_inst.lt31.qbar = 1'b1;
      sr_inst.lt32.q = 1'b0;
      sr_inst.lt32.qbar = 1'b1;
      sr_inst.lt33.q = 1'b0;
      sr_inst.lt33.qbar = 1'b1;
      
      
      
      sr_inst.lt21.q = 1'b0;
      sr_inst.lt21.qbar = 1'b1;
      sr_inst.lt22.q = 1'b0;
      sr_inst.lt22.qbar = 1'b1;
      sr_inst.lt23.q = 1'b0;
      sr_inst.lt23.qbar = 1'b1;
      
    
      
      sr_inst.lt11.q = 1'b0;
      sr_inst.lt11.qbar = 1'b1;
      sr_inst.lt12.q = 1'b0;
      sr_inst.lt12.qbar = 1'b1;
      sr_inst.lt13.q = 1'b0;
      sr_inst.lt13.qbar = 1'b1;
   
      
      sr_inst.lt01.q = 1'b0;
      sr_inst.lt01.qbar = 1'b1;
      sr_inst.lt02.q = 1'b0;
      sr_inst.lt02.qbar = 1'b1;
      sr_inst.lt03.q = 1'b0;
      sr_inst.lt03.qbar = 1'b1;
      
      
    end
  
  initial
    begin
      rd7 = 1'b1;
      rd6 = 1'b0;
      rd5 = 1'b1;
      rd4 = 1'b0;
      rd3 = 1'b1;
      rd2 = 1'b1;
      rd1 = 1'b1;
      rd0 = 1'b1;
      
      rsi = 1'b0;
      rsh = 1'b0;
      rshl = 1'b0;
      rl = 1'b1;
      
      #20
      $display("------------------------------------------------");
      $display("time = %3d, d7 = %b, d6 = %b, d5 = %b, d4 = %b, d3 = %b, d2 = %b, d1 = %b, d0 = %b", $time, rd7, rd6, rd5, rd4, rd3, rd2, rd1, rd0);
      $display("------------------------------------------------");
      $display("time | si | shl | sh | l  | q7 | q6 | q5 | q4 | q3 | q2 | q1 | q0 | so ");
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      
      rsi = 1'b0;
      rsh = 1'b0;
      rshl = 1'b0;
      rl = 1'b1;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b0;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b0;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b0;
      rshl = 1'b1;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rd7 = 1'b1;
      rd6 = 1'b1;
      rd5 = 1'b1;
      rd4 = 1'b1;
      rd3 = 1'b1;
      rd2 = 1'b1;
      rd1 = 1'b1;
      rd0 = 1'b1;
      
      rsi = 1'b0;
      rsh = 1'b0;
      rshl = 1'b0;
      rl = 1'b1;
      
      #20
      $display("------------------------------------------------");
      $display("time = %3d, d7 = %b, d6 = %b, d5 = %b, d4 = %b, d3 = %b, d2 = %b, d1 = %b, d0 = %b", $time, rd7, rd6, rd5, rd4, rd3, rd2, rd1, rd0);
      $display("------------------------------------------------");
      $display("time | si | shl | sh | l  | q7 | q6 | q5 | q4 | q3 | q2 | q1 | q0 | so ");
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
      
      rsi = 1'b0;
      rsh = 1'b1;
      rshl = 1'b0;
      rl = 1'b0;
      
      #20
      $display("%3d  | %b  | %b   | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b", $time, rsi, rshl, rsh, rl, rq7, rq6, rq5, rq4, rq3, rq2, rq1, rq0, rso);
        
    end
  
  initial
    #400 $finish;
  
  initial
    begin
      $dumpfile("sr.vcd");
      $dumpvars;
    end
  
endmodule