

module andgate(a,b,y);   //'andgate' - Module Name, (a,b,y) - Module Port
input a,b; // Declaration of ports
output y;

and(y,a,b);    // Gate level design by instantiating gates

initial
begin
$display ("This is AND - Gatelevel Modeling");
end
endmodule




