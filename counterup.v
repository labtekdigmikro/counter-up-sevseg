module counterup(clkin, ledout);

input clkin;
output reg [3:0] ledout = 4'b0000;

integer counter = 1;

always@(posedge clkin)
begin
	counter <= counter + 1;
	
	if(counter >= 50000000)
	begin
		counter <= 1;
		ledout <= ledout + 1;
		if(ledout == 9)
		begin
			ledout <= 0;
		end
	end
end

endmodule