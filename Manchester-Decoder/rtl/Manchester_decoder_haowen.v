module Manchester_decoder(
    input clk, //32MHz OSC
    input rst,
    input Man_data, //Manchester data
    output reg Balan_clock, Rec_data, //Balanced clock & Recovered data
    output Rec_clock //Recovered cXlock
  ); 
	
    wire [3:0] counter_4b;   //4-bit counter
    wire [3:0] counter;      //counter
    reg        comp_4b;      //A > Ref
    reg        comp;         //Ref >= A
    wire        counter_out;  //Out 
    wire       En;           //En
	
 //------Recovered Clock generation-------
    assign Rec_clock = Man_data ^ Rec_data;	
 //------En generation--------------------
    assign En = comp | Rec_clock;
 //------Rst for 4b counter---------------	
    //assign reset_4b = Rec_clock;
 //---------------------------------------	
	
	
 //------Balanced Clock generation--------

    always @(posedge clk) 
      begin
        if (counter_4b < 4'd12)
          begin
            if (counter_4b > 4'd7) //A > Ref
              comp_4b <= 1'b1 ;
            else 
              comp_4b <= 1'b0;
          end
        else
          comp_4b <= 1'b0 ;
      end
	  
/*
    always @(posedge Rec_clock or posedge comp_4b)
      begin
        if (comp_4b)
	        Balan_clock <= 1'b0;
	      else
	        Balan_clock <= 1'b1;
      end
*/      

    always @(posedge Rec_clock or posedge comp_4b or posedge rst)
      begin
        if (rst)
          begin
            Balan_clock <= 1'b0;
          end
        else
          begin
            if (comp_4b)
	            Balan_clock <= 1'b0;
	          else
	            Balan_clock <= 1'b1;
          end
      end  

		  
 //------CLK for Recovered Data------------
	  
    always @(posedge clk or posedge rst)
      begin
        if (rst) 
          begin
            comp <= 1'b0;
          end
        else 
          begin
            if ((counter > 4'd0)&&(counter < 4'd9)) //A1 <= Ref
              comp <= 1'b1;
	          else if (counter == 4'd0)
              comp <= 1'b0;		
            else
              comp <= 1'b0;
          end
      end
	  
    always @(posedge counter_out or posedge rst)
      begin
	    if (rst)
        Rec_data <= 1'b0;
	    else
        Rec_data <= Man_data;
      end
	  
 //----------------------------------------
	
  counter_4b counter_4bt(
      .clk (clk),
      .reset (Rec_clock),
      .counter (counter_4b)
    );
	
	counter_m counter_t(
      .clk (clk),
      .En (En),
      .counter (counter),
      .counter_out (counter_out)
    );

endmodule