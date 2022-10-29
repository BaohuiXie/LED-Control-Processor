module manchester_dec 
#(
        parameter OSC_FRE   = 32,   //osc frequency(MHz)--32MHz
        parameter DATA_RATE =  2    //data rate(Mbps)------2Mbps
)
(
    input       manchester_data,
    input       osc            ,
    input       rst_n          ,
    output reg  recovered_data ,
    output reg  balanced_clk
);
    localparam one_bit_time         = (OSC_FRE/DATA_RATE);
    localparam three_four_bit_time  = (3 * one_bit_time)/4;
    localparam one_half_bit_time    = one_bit_time/2;
    localparam cnt_depth            = one_bit_time >> 2;

    wire recovered_clk;
    wire en;
    wire comparator_out;
    reg counter_out;
    reg [cnt_depth-1:0] cnt;


    
    always @(posedge osc or negedge rst_n) begin
        if(!rst_n)begin
            cnt <= three_four_bit_time;
        end
        else if(counter_out)begin
            cnt <= three_four_bit_time;
        end
        else if(en)begin
            cnt <= cnt - 1'b1;
        end
        else begin
            cnt <= cnt;
        end
    end

    always @(posedge osc or negedge rst_n) begin
        if(!rst_n)begin
            counter_out <= 1'b0;
        end
        else if(cnt==1)begin
            counter_out <= 1'b1;
        end
        else begin
            counter_out <= 1'b0;
        end
    end

    always @(posedge counter_out or negedge rst_n) begin
        if(!rst_n)begin
            recovered_data <= 1'b0;
        end
        else begin
            recovered_data <= manchester_data;
        end
    end 
    
    assign recovered_clk = manchester_data ^ recovered_data;
    assign en = recovered_clk | comparator_out;
    assign comparator_out = (cnt<=one_half_bit_time) ? 1'b1 : 1'b0;
    
    reg [cnt_depth-1:0] clk_cnt;
    wire clk_comp;
    always @(posedge osc or negedge recovered_clk) begin
        if(!recovered_clk)begin
            clk_cnt <= 'b0;
        end
        else begin
            clk_cnt <= clk_cnt + 1'b1;
        end
    end

    assign clk_comp = (clk_cnt>=one_half_bit_time) ? 1'b1 : 1'b0;

    always @(posedge recovered_clk or posedge clk_comp) begin
        if(clk_comp)begin
            balanced_clk <= 1'b0;
        end
        else begin
            balanced_clk <= 1'b1;
        end
    end



endmodule