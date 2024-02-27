

// Behavioral or Algorithmic Modeling

/*
module orgate(a,b,y);   //'orgate' - Module Name, (a,b,y) - Module Port
input a,b; // Declaration of ports
output reg y; // for behavioral modeling

always@(a or b)
begin
if (a==0'b1 & b==0'b1)
   y=1'b0;
else
   y=1'b1;
end

initial
begin
$display ("This is or - Behavioral or Algorithmic Modeling");
end
endmodule
*/

/*

//  Dataflow Modeling

module orgate(a,b,y);   //'orgate' - Module Name, (a,b,y) - Module Port
input a,b; // Declaration of ports
output y;

assign y=a||b;    // data flow modeling

initial
begin
$display ("This is or - Dataflow Modeling");
end
endmodule

*/


 
//  Gatelevel Modeling

module orgate(a,b,y);   //'orgate' - Module Name, (a,b,y) - Module Port
input a,b; // Declaration of ports
output y;

or(y,a,b);    // Gate level design by instantiating gates

initial
begin
$display ("This is or - Gatelevel Modeling");
end
endmodule




