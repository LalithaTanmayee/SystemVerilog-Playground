`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2024 09:35:40 AM
// Design Name: 
// Module Name: seven_seg_display_tb
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


module seven_seg_display_tb;
reg [3:0] data;
wire [7:0] display;

seven_seg_display dut1 (.data(data), .display(display));

initial begin
data = 4'b0000;
#10 $display("%b", display);

data = 4'b0001;
#10 $display("%b", display);

data = 4'b0010;
#10$display("%b", display);

data = 4'b0011;
#10 $display("%b", display);

data = 4'b0100;
#10 $display("%b", display);

data = 4'b0101;
#10 $display("%b", display);

data = 4'b0110;
#10 $display("%b", display);

data = 4'b0111;
#10 $display("%b", display);

data = 4'b1000;
#10 $display("%b", display);

data = 4'b1001;
#10 $display("%b", display);

end
endmodule
