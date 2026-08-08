`timescale 1ns/1ps

module johnson_counter_tb;


reg clk;
reg reset;

wire [3:0] q;


johnson_counter uut(

.clk(clk),
.reset(reset),
.q(q)

);


always #5 clk = ~clk;


initial
begin

$dumpfile("johnson_counter.vcd");
$dumpvars(0,johnson_counter_tb);


clk = 0;
reset = 1;


#10;

reset = 0;


// Run counter

#100;


$finish;

end


endmodule