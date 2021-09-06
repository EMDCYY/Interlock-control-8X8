`timescale 1ns/100ps

module outCPLD_tb;

logic pclk_50M;
logic [1:8] outP;
logic [1:28] out;
logic [1:8] eoutP;
logic [1:28] eout;


outCPLD DUT(.*);

always #10 pclk_50M	= ~pclk_50M;

initial begin
pclk_50M = 1'b0;
outP 	= 8'bz;
out 	= 28'bz;

#100
outP 	= 8'b10110011;
out 	= 28'b1111111100000000000000000000;

#10000350
outP 	= 8'b11110101;
out 	= 28'b1111111100000000000001101000;

#500
out 	= 28'b1111111100000001000001101000;

#10000350	$stop;
end


endmodule
