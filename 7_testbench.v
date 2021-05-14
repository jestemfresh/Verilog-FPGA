module _7_mytestbenchmodule();
reg CLK;
initial CLK  <= 0;
always #50  CLK <= ~CLK;
		
reg RST;
initial 
begin	
	RST <= 0;
	RST <= #100 1;
	RST <= #500 0;
end	  	

reg fi_stb;
reg [7:0]  fi_dat;	
wire fi_bsy;
wire fo_stb;
wire [7:0] fo_dat;
reg fo_ack;

initial 
begin		  
	fi_stb <= 0;   
	fo_ack <= 0; 
	fi_dat <= 0;
	#1000;	  	 
	@(negedge CLK);		 
	fi_stb <= 1;  
	fi_dat <= 1; @(negedge CLK);
	fi_dat <= 2; @(negedge CLK);
	fi_dat <= 3; @(negedge CLK);
	fi_dat <= 4; @(negedge CLK);
	fi_dat <= 5; @(negedge CLK);
	fi_dat <= 6; @(negedge CLK);
	fi_dat <= 7; @(negedge CLK);
	fi_dat <= 8; @(negedge CLK);
	fi_dat <= 9; @(negedge CLK);
	fi_dat <= 10; @(negedge CLK);
	fi_dat <= 11; @(negedge CLK);
	fi_dat <= 12; @(negedge CLK);
	fi_dat <= 13; @(negedge CLK);
	fi_dat <= 14; @(negedge CLK);
	fi_dat <= 15; @(negedge CLK);
	fi_dat <= 16; @(negedge CLK);
	fi_dat <= 17; @(negedge CLK);
	fi_dat <= 18; @(negedge CLK);
	fi_dat <= 19; @(negedge CLK);
	fi_dat <= 20; @(negedge CLK);
	fi_dat <= 21; @(negedge CLK);
	fi_stb <= 0;
	#1000;		
	@(negedge CLK);	 
	fo_ack <= 1;
end	  
   
fifo	
#(								  
.WIDTH(8)
) 
f1
(                               
.CLK(CLK),         
.RST(RST),         								
.FI_STB(fi_stb),      
.FI_DAT(fi_dat),      
.FI_BSY(fi_bsy),                                  
.FO_STB(fo_stb),      
.FO_ACK(fo_ack),      
.FO_DAT(fo_dat)   
);          
endmodule
