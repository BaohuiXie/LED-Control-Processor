`timescale 1ns / 1ps

module manchester_dec_tb;

	// Inputs
	reg       manchester_data;
	reg       osc            ;
	reg       rst_n          ;
    // Outputs
	wire      recovered_data ;
	wire      balanced_clk   ;

    `ifdef SDF_FILE
    initial begin
    $sdf_annotate(`SDF_FILE, uut);
    end
    `endif

	// Instantiate the Unit Under Test (UUT)
	manchester_dec 
    #(
	    .OSC_FRE		    (32),
	    .DATA_RATE	        (2 ) 
    )
    uut (
		.manchester_data    (manchester_data), 
		.osc                (osc            ), 
		.rst_n              (rst_n          ), 
		.recovered_data     (recovered_data ),
        .balanced_clk       (balanced_clk   )
	);

    always # 15.625 osc = ~osc;

	initial begin
		// Initialize Inputs
		osc = 0;
		rst_n = 0;
		manchester_data = 0;
		// Wait 100 ns for global reset to finish
		#100;
        rst_n = 1'b1;
        #250;
        manchester_data = 0;//0
        #250;
        manchester_data = 1;
        #250;
        manchester_data = 1;//1
        #250;
        manchester_data = 0;
        #250;
        manchester_data = 1;//1
        #250;
        manchester_data = 0;
        #250;
        manchester_data = 0;//0
        #250;
        manchester_data = 1;
        #250;
        manchester_data = 0;//0
        #250;
        manchester_data = 1;
        #250;
        manchester_data = 1;//1
        #250;
        manchester_data = 0;
        #250;
        manchester_data = 0;//0
        #250;
        manchester_data = 1;
		#10000;
		$finish;
	end

    /*
    initial begin
	    $monitor("%dns rx_data is %b tx_data is %b\n",$time,rx_data,tx_data);
    end // initial*/


endmodule