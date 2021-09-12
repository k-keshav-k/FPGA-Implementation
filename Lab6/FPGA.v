// Code your design here
module logic_tile(out, clock, in1, in2, in3, in4, in5);
  input clock, in1, in2, in3, in4, in5;
  output out;
  wire out;
  reg out1;
  wire out2;
  reg q, qbar;
  wire [32:0] mem;
  
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
  
  initial
    begin
      q = 1'b0;
      qbar = 1'b1;
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
  wire [15:0] configure;
  wire [3:0] out;
  
  assign out[0] = ((configure[0] & in[0]) | (configure[1] & in[1]) |(configure[2] & in[2]) | (configure[3] & in[3]));
  assign out[1] = ((configure[4] & in[0]) | (configure[5] & in[1]) |(configure[6] & in[2]) | (configure[7] & in[3]));
  assign out[2] = ((configure[8] & in[0]) | (configure[9] & in[1]) |(configure[10] & in[2]) | (configure[11] & in[3]));
  assign out[3] = ((configure[12] & in[0]) | (configure[13] & in[1]) |(configure[14] & in[2]) | (configure[15] & in[3]));

endmodule

module shift_register(q7, q6, q5, q4, q3, q2, q1, q0, so, d7, d6, d5, d4, d3, d2, d1, d0, si, sh, shl, l, clock);
  
  input d7, d6, d5, d4, d3, d2, d1, d0, si, sh, shl, l, clock;
  output q7, q6, q5, q4, q3, q2, q1, q0, so;
  
  wire [3:0] sb71_out, sb61_out, sb51_out, sb41_out, sb31_out, sb21_out, sb11_out, sb01_out;
  
  wire [3:0] sb72_out, sb62_out, sb52_out, sb42_out, sb32_out, sb22_out, sb12_out, sb02_out;
  
  wire [3:0] sb1_out, sb2_out, sb3_out;
  
  wire lut71_out, lut72_out, lut61_out, lut62_out, lut51_out, lut52_out, lut41_out, lut42_out, lut31_out, lut32_out, lut21_out, lut22_out, lut11_out, lut12_out, lut01_out, lut02_out;
  
  //reg q7, q6, q5, q4, q3, q2, q1, q0, so;
  
  assign so = q0;
  
  switch_box_4x4 sb1(sb1_out, {d0, d1, d2, l});
  switch_box_4x4 sb2(sb2_out, {d3, d4, d5, shl});
  switch_box_4x4 sb3(sb3_out, {d6, d7, si, sh});
  
  switch_box_4x4 sb71(sb71_out, {q7, d7, si, q6});
  switch_box_4x4 sb72(sb72_out, {sb1_out[3], sb2_out[3], sb3_out[3], 1'b0}); 
  logic_tile lt71(lut71_out, clock, sb72_out[3], sb72_out[2], sb72_out[1], sb71_out[2], sb71_out[3]);
  logic_tile lt72(lut72_out, clock, sb72_out[3], sb72_out[2], sb72_out[1], sb71_out[0], sb71_out[1]);
  logic_tile lt73(q7, clock, sb72_out[3], sb72_out[2], sb72_out[1], lut72_out, lut71_out);
  
  switch_box_4x4 sb61(sb61_out, {q6, d6, q7, q5});
  switch_box_4x4 sb62(sb62_out, {sb1_out[3], sb2_out[3], sb3_out[3], 1'b0}); 
  logic_tile lt61(lut61_out, clock, sb62_out[3], sb62_out[2], sb62_out[1], sb61_out[2], sb61_out[3]);
  logic_tile lt62(lut62_out, clock,  sb62_out[3], sb62_out[2], sb62_out[1], sb61_out[0], sb61_out[1]);
  logic_tile lt63(q6, clock, sb62_out[3], sb62_out[2], sb62_out[1], lut62_out, lut61_out);
  
  switch_box_4x4 sb51(sb51_out, {q5, d5, q6, q4});
  switch_box_4x4 sb52(sb52_out, {sb1_out[2], sb2_out[2], sb3_out[2], q7}); 
  logic_tile lt51(lut51_out, clock, sb52_out[3], sb52_out[2], sb52_out[1], sb51_out[2], sb51_out[3]);
  logic_tile lt52(lut52_out, clock, sb52_out[3], sb52_out[2], sb52_out[1], sb51_out[0], sb51_out[1]);
  logic_tile lt53(q5, clock, sb52_out[3], sb52_out[2], sb52_out[1], lut52_out, lut51_out);
  
  switch_box_4x4 sb41(sb41_out, {q4, d4, q5, q3});
  switch_box_4x4 sb42(sb42_out, {sb1_out[2], sb2_out[2], sb3_out[2], q6});
  logic_tile lt41(lut41_out, clock, sb42_out[3], sb42_out[2], sb42_out[1], sb41_out[2], sb41_out[3]);
  logic_tile lt42(lut42_out, clock,  sb42_out[3], sb42_out[2], sb42_out[1], sb41_out[0], sb41_out[1]);
  logic_tile lt43(q4, clock, sb42_out[3], sb42_out[2], sb42_out[1], lut42_out, lut41_out);
  
  switch_box_4x4 sb31(sb31_out, {q3, d3, q4, q2});
  switch_box_4x4 sb32(sb32_out, {sb1_out[1], sb2_out[1], sb3_out[1], q5});
  logic_tile lt31(lut31_out, clock, sb32_out[3], sb32_out[2], sb32_out[1], sb31_out[2], sb31_out[3]);
  logic_tile lt32(lut32_out, clock,  sb32_out[3], sb32_out[2], sb32_out[1], sb31_out[0], sb31_out[1]);
  logic_tile lt33(q3, clock, sb32_out[3], sb32_out[2], sb32_out[1], lut32_out, lut31_out);
  
  switch_box_4x4 sb21(sb21_out, {q2, d2, q3, q1});
  switch_box_4x4 sb22(sb22_out, {sb1_out[1], sb2_out[1], sb3_out[1], q4});
  logic_tile lt21(lut21_out, clock,  sb22_out[3], sb22_out[2], sb22_out[1], sb21_out[2], sb21_out[3]);
  logic_tile lt22(lut22_out, clock,  sb22_out[3], sb22_out[2], sb22_out[1], sb21_out[0], sb21_out[1]);
  logic_tile lt23(q2, clock, sb22_out[3], sb22_out[2], sb22_out[1], lut22_out, lut21_out);
  
  switch_box_4x4 sb11(sb11_out, {q1, d1, q2, q0});
  switch_box_4x4 sb12(sb12_out, {sb1_out[0], sb2_out[0], sb3_out[0], q3});
  logic_tile lt11(lut11_out, clock, sb12_out[3], sb12_out[2], sb12_out[1], sb11_out[2], sb11_out[3]);
  logic_tile lt12(lut12_out, clock,  sb12_out[3], sb12_out[2], sb12_out[1], sb11_out[0], sb11_out[1]);
  logic_tile lt13(q1, clock, sb12_out[3], sb12_out[2], sb12_out[1], lut12_out, lut11_out);
  
  switch_box_4x4 sb01(sb01_out, {q0, d0, q1, 1'b0});
  switch_box_4x4 sb02(sb02_out, {sb1_out[0], sb2_out[0], sb3_out[0], q2});
  logic_tile lt01(lut01_out, clock, sb02_out[3], sb02_out[2], sb02_out[1], sb01_out[2], sb01_out[3]);
  logic_tile lt02(lut02_out, clock,  sb02_out[3], sb02_out[2], sb02_out[1], sb01_out[0], sb01_out[1]);
  logic_tile lt03(q0, clock, sb02_out[3], sb02_out[2], sb02_out[1], lut02_out, lut01_out);
  
endmodule
