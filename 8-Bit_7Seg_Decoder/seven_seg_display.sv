`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2024 06:53:41 AM
// Design Name: 
// Module Name: seven_seg_display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seven_seg_display (data, display);
input logic [3:0] data;
output logic [7:0] display;
logic a, b, c, d, e, f, g;

assign display[0] = a;
assign display[1] = b;
assign display[2] = c;
assign display[3] = d;
assign display[4] = e;
assign display[5] = f;
assign display[6] = g;
assign display[7] = 1'b0;

always_comb
begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
    e = 1'b0;
    f = 1'b0;
    g = 1'b0;

    case(data)
        4'b0000: {a,b,c,d,e,f} = 6'b111111;  
        4'b0001: {b,c} = 2'b11;              
        4'b0010: {a,b,g,e,d} = 5'b11111;     
        4'b0011: {a,b,g,c,d} = 5'b11111;     
        4'b0100: {f,g,b,c} = 4'b1111;        
        4'b0101: {a,f,g,c,d} = 5'b11111;     
        4'b0110: {a,f,e,d,c,g} = 6'b111111;  
        4'b0111: {a,b,c} = 3'b111;           
        4'b1000: {a,b,c,d,e,f,g} = 7'b1111111;  
        4'b1001: {a,f,g,b,c,d} = 6'b111111;  
        default: {a,b,c,d,e,f,g} = 7'b0000000; 
    endcase
end
endmodule
