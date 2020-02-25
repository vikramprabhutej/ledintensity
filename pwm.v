module LED_PWM(input wire clk, input wire[3:0] PWM_input,output reg LED);
//input clk;
//input wire [3:0] PWM_input;     // 16 intensity levels
//output LED;

reg [4:0] PWM;


//$write("%b",PWM_input[3]);
always @(posedge clk) PWM <= PWM[3:0]+PWM_input;

assign LED = PWM[4];
endmodule
