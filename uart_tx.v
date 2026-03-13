module uart_tx(
input clk,
input start,
input [7:0] data,
output reg tx
);

reg [3:0] bit_index;

always @(posedge clk)
begin

if(start)
begin

tx <= 0; // start bit

#10 tx <= data[0];
#10 tx <= data[1];
#10 tx <= data[2];
#10 tx <= data[3];
#10 tx <= data[4];
#10 tx <= data[5];
#10 tx <= data[6];
#10 tx <= data[7];

#10 tx <= 1; // stop bit

end

end

endmodule
