
module digital_control(input balanced_clk,
                       input rst_n,
                       input rec_data,
                       output data_out,
                       output reg [11:0]r_data,
                       output reg [11:0]g_data,
                       output reg [11:0]b_data);


wire [5:0] count;

wire load;
wire [15:0] header_store;
reg  [15:0] data_out_reg;
reg  gate_clk;
reg  [38:0] rgb_data;

 

counter u0(
    .clk(balanced_clk),
    .rst_n(load),
    .count(count)
        ); 


shift_register u1(
    .clk(balanced_clk),
    .rst_n(rst_n),
    .data(rec_data),
    .load(load),
    .count(count),
    .header_store(header_store)
        );


assign load = (header_store == 16'h7fff) ? 1 : 0;

always @(posedge balanced_clk or negedge rst_n)
    begin
        if (!rst_n)
            begin
                rgb_data <= 0;
                r_data <= 0;
                g_data <= 0;
                b_data <= 0;
            end
        else if (load == 0)
            begin
                rgb_data <= 0;
                r_data <= 0;
                g_data <= 0;
                b_data <= 0;
            end
        else if (load == 1)
            begin
                if (count >= 6'd0 && count <= 6'd38)
                    begin
                        rgb_data <= {rgb_data[37:0], rec_data};

                    end
                else if (count >= 10'd39)
                    begin
                        rgb_data <= rgb_data;
                        b_data <= rgb_data[11:0];
                        g_data <= rgb_data[24:13];
                        r_data <= rgb_data[37:26];
                    end
            end
       else
            begin
                rgb_data <= 0;
                r_data <= 0;
                g_data <= 0;
                b_data <= 0;
            end
    end



reg [5:0] cnt;

 
  always @ (posedge balanced_clk or negedge rst_n) 
    begin
        if (!rst_n)
            begin  
                cnt<=0;
            end
        else if (cnt == 6'd63)
            begin
               cnt<=0;
            end
        else
            begin
                cnt <= cnt + 1;
            end
    end

assign data_out = (gate_clk==1)?(load ==1 && cnt >= 10'd40 && cnt <= 10'd55)? data_out_reg[0]:rec_data:0;


always @(posedge balanced_clk or negedge rst_n)
    begin
        if (!rst_n)
            begin
               gate_clk <= 0;
                data_out_reg <= 0;

            end
        else if (cnt < 6'd39)
            begin
                data_out_reg<=0;
             
            end
        else begin 
                if (load == 0)
                    begin
                        gate_clk<=1;
                        data_out_reg<=0;
                    
                    end
                else if (load == 1)
                    begin
                        if (cnt == 6'd39)
                            begin
                                gate_clk <= 0;
                                data_out_reg <= header_store;
                             
                            end
                        else if (cnt >= 6'd40 && cnt <= 6'd55)
                            begin
                                gate_clk <= 1;
                                data_out_reg <= {data_out_reg[14:0],data_out_reg[15]};
                             
                            end
                        else if (cnt > 10'd55)
                            begin
                                gate_clk <= 1;
                                data_out_reg <= data_out_reg;
                               
                            end
                     
                        else
                            begin
                                gate_clk <= 0;
                                data_out_reg <= data_out_reg;
                              
                            end
                    end
             end
    end


endmodule




module shift_register(input clk,
                      input rst_n,
                      input data,
                      input load,
                      input   [5:0]count,
                      output reg [15:0]header_store
                      );

always @ (posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            begin
                header_store <= 0;
            end
        else if (load==1 || count > 6'd15)
            begin
                header_store <= header_store;
            end
        else 
            begin
                header_store <= {header_store[14:0],data};
            end
    end
endmodule




module counter(input clk,
               input rst_n,
               output reg[5:0] count);

always @ (posedge clk or negedge rst_n)   
    begin
        if (!rst_n)
            begin  
                count <= 0;
            end
        else if (count == 6'd63)
            begin
               count <= 0;
            end
        else
            begin
                count <= count+1;
            end
    end
endmodule
