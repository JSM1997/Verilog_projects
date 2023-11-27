module Celda_final_d_i #(
    parameter N=3

) (/*Tiene 4 entradas 1 salida*/
    input wire a_p,
    input wire b_p,
    input wire x_p,
    input wire y_p,
    output wire p_z
);
assign p_z = x_p&&y_p||x_p&&a_p&&b_p;

endmodule
