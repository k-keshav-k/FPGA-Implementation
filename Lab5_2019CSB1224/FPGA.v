// Code your design here
module logic_tile(out, clock, in1, in2, in3, in4, in5);
  input clock, in1, in2, in3, in4, in5;
  output out;
  reg out;
  reg out1, out2;
  reg q, qbar;
  reg [32:0] mem;
  
  assign out2 = out1;
  
  always @(*) 
    begin
      case ({in5,in4,in3,in2,in1})
        5'b00000: out1=mem[0];
        5'b00001: out1=mem[1];
        5'b00010: out1=mem[2];
        5'b00011: out1=mem[3];
        5'b00100: out1=mem[4];
        5'b00101: out1=mem[5];
        5'b00110: out1=mem[6];
        5'b00111: out1=mem[7];
        5'b01000: out1=mem[8];
        5'b01001: out1=mem[9];
        5'b01010: out1=mem[10];
        5'b01011: out1=mem[11];
        5'b01100: out1=mem[12];
        5'b01101: out1=mem[13];
        5'b01110: out1=mem[14];
        5'b01111: out1=mem[15];
        5'b10000: out1=mem[16];
        5'b10001: out1=mem[17];
        5'b10010: out1=mem[18];
        5'b10011: out1=mem[19];
        5'b10100: out1=mem[20];
        5'b10101: out1=mem[21];
        5'b10110: out1=mem[22];
        5'b10111: out1=mem[23];
        5'b11000: out1=mem[24];
        5'b11001: out1=mem[25];
        5'b11010: out1=mem[26];
        5'b11011: out1=mem[27];
        5'b11100: out1=mem[28];
        5'b11101: out1=mem[29];
        5'b11110: out1=mem[30];
        5'b11111: out1=mem[31];
        //Default: out1=1'bx;
    endcase
  end
  
  always @(posedge clock) begin
    q <= out2;
    qbar <= !out2;
  end
  
  
  assign out = ((~mem[32] & out1) | (mem[32] & q));
  
endmodule

module switch_box_4x4(out, in);
  input[3:0] in;
  output [3:0] out;
  reg [15:0] configure;
  reg [3:0] out;
  
  assign out[0] = ((configure[0] & in[0]) | (configure[1] & in[1]) |(configure[2] & in[2]) | (configure[3] & in[3]));
  assign out[1] = ((configure[4] & in[0]) | (configure[5] & in[1]) |(configure[6] & in[2]) | (configure[7] & in[3]));
  assign out[2] = ((configure[8] & in[0]) | (configure[9] & in[1]) |(configure[10] & in[2]) | (configure[11] & in[3]));
  assign out[3] = ((configure[12] & in[0]) | (configure[13] & in[1]) |(configure[14] & in[2]) | (configure[15] & in[3]));

endmodule

module shift_register(q7, q6, q5, q4, q3, q2, q1, q0, so, d7, d6, d5, d4, d3, d2, d1, d0, si, sh, shl, l, clock);
  
  input d7, d6, d5, d4, d3, d2, d1, d0, si, sh, shl, l, clock;
  output q7, q6, q5, q4, q3, q2, q1, q0, so;
  
  reg [3:0] sb7_out, sb6_out, sb5_out, sb4_out, sb3_out, sb2_out, sb1_out, sb0_out;
  
  reg lut71_out, lut72_out, lut61_out, lut62_out, lut51_out, lut52_out, lut41_out, lut42_out, lut31_out, lut32_out, lut21_out, lut22_out, lut11_out, lut12_out, lut01_out, lut02_out;
  
  assign so = q0;
  
  switch_box_4x4 sb7(sb7_out, {q7, d7, si, q6});
  logic_tile lt71(lut71_out, clock, l, shl, sh, sb7_out[2], sb7_out[3]);
  logic_tile lt72(lut72_out, clock, l, shl, sh, sb7_out[0], sb7_out[1]);
  logic_tile lt73(q7, clock, l, shl, sh, lut72_out, lut71_out);
  
  switch_box_4x4 sb6(sb6_out, {q6, d6, q7, q5});
  logic_tile lt61(lut61_out, clock, l, shl, sh, sb6_out[2], sb6_out[3]);
  logic_tile lt62(lut62_out, clock,  l, shl, sh, sb6_out[0], sb6_out[1]);
  logic_tile lt63(q6, clock, l, shl, sh, lut62_out, lut61_out);
  
  switch_box_4x4 sb5(sb5_out, {q5, d5, q6, q4});
  logic_tile lt51(lut51_out, clock, l, shl, sh, sb5_out[2], sb5_out[3]);
  logic_tile lt52(lut52_out, clock,  l, shl, sh, sb5_out[0], sb5_out[1]);
  logic_tile lt53(q5, clock, l, shl, sh, lut52_out, lut51_out);
  
  switch_box_4x4 sb4(sb4_out, {q4, d4, q5, q3});
  logic_tile lt41(lut41_out, clock, l, shl, sh, sb4_out[2], sb4_out[3]);
  logic_tile lt42(lut42_out, clock,  l, shl, sh, sb4_out[0], sb4_out[1]);
  logic_tile lt43(q4, clock, l, shl, sh, lut42_out, lut41_out);
  
  switch_box_4x4 sb3(sb3_out, {q3, d3, q4, q2});
  logic_tile lt31(lut31_out, clock, l, shl, sh, sb3_out[2], sb3_out[3]);
  logic_tile lt32(lut32_out, clock,  l, shl, sh, sb3_out[0], sb3_out[1]);
  logic_tile lt33(q3, clock, l, shl, sh, lut32_out, lut31_out);
  
  switch_box_4x4 sb2(sb2_out, {q2, d2, q3, q1});
  logic_tile lt21(lut21_out, clock,  l, shl, sh, sb2_out[2], sb2_out[3]);
  logic_tile lt22(lut22_out, clock,  l, shl, sh, sb2_out[0], sb2_out[1]);
  logic_tile lt23(q2, clock, l, shl, sh, lut22_out, lut21_out);
  
  switch_box_4x4 sb1(sb1_out, {q1, d1, q2, q0});
  logic_tile lt11(lut11_out, clock, l, shl, sh, sb1_out[2], sb1_out[3]);
  logic_tile lt12(lut12_out, clock,  l, shl, sh, sb1_out[0], sb1_out[1]);
  logic_tile lt13(q1, clock, l, shl, sh, lut12_out, lut11_out);
  
  switch_box_4x4 sb0(sb0_out, {q0, d0, q1, 1'b0});
  logic_tile lt01(lut01_out, clock, l, shl, sh, sb0_out[2], sb0_out[3]);
  logic_tile lt02(lut02_out, clock,  l, shl, sh, sb0_out[0], sb0_out[1]);
  logic_tile lt03(q0, clock, l, shl, sh, lut02_out, lut01_out);
  
endmodule