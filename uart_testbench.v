`timescale 1ns/1ps

module uart_tb;

reg clk;
reg start;
reg [7:0] data;
wire tx;

uart_tx uut(
.clk(clk),
.start(start),
.data(data),
.tx(tx)
);

always #5 clk = ~clk;

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,uart_tb);

clk = 0;
start = 0;
data = 8'b10101010;

#20 start = 1;

#200 $finish;

end

endmodule
