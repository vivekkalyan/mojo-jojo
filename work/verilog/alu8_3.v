/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu8_3 (
    input [5:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out
  );
  
  
  
  wire [8-1:0] M_add_ao;
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  wire [8-1:0] M_add_out;
  reg [8-1:0] M_add_a;
  reg [8-1:0] M_add_b;
  reg [1-1:0] M_add_alufn;
  adder8_5 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn(M_add_alufn),
    .ao(M_add_ao),
    .z(M_add_z),
    .v(M_add_v),
    .n(M_add_n),
    .out(M_add_out)
  );
  
  wire [8-1:0] M_bool_out;
  reg [8-1:0] M_bool_a;
  reg [8-1:0] M_bool_b;
  reg [4-1:0] M_bool_alufn;
  boole8_6 bool (
    .a(M_bool_a),
    .b(M_bool_b),
    .alufn(M_bool_alufn),
    .out(M_bool_out)
  );
  
  wire [8-1:0] M_cmp_out;
  reg [1-1:0] M_cmp_z;
  reg [1-1:0] M_cmp_v;
  reg [1-1:0] M_cmp_n;
  reg [2-1:0] M_cmp_alufn;
  compare8_7 cmp (
    .z(M_cmp_z),
    .v(M_cmp_v),
    .n(M_cmp_n),
    .alufn(M_cmp_alufn),
    .out(M_cmp_out)
  );
  
  wire [8-1:0] M_shift_out;
  reg [8-1:0] M_shift_a;
  reg [3-1:0] M_shift_b;
  reg [2-1:0] M_shift_alufn;
  shift8_8 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .out(M_shift_out)
  );
  
  always @* begin
    M_add_a = a;
    M_add_b = b;
    M_add_alufn = alufn[0+0-:1];
    M_bool_a = a;
    M_bool_b = b;
    M_bool_alufn = alufn[0+3-:4];
    M_cmp_z = M_add_z;
    M_cmp_v = M_add_v;
    M_cmp_n = M_add_n;
    M_cmp_alufn = alufn[0+1-:2];
    M_shift_a = a;
    M_shift_b = b[0+2-:3];
    M_shift_alufn = alufn[0+1-:2];
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = M_add_out;
      end
      2'h1: begin
        out = M_bool_out;
      end
      2'h2: begin
        out = M_shift_out;
      end
      2'h3: begin
        out = M_cmp_out;
      end
      default: begin
        out = 8'h00;
      end
    endcase
  end
endmodule