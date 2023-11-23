module Celda_final_d_i #(
    parameter N=3/*preguntar al profe si esta es una definición valida porque no se puede pedir */ 
    
) (/*Tiene 4 entradas 1 salida*/
    input wire a_p, 
    input wire b_p,
    input wire x_p, 
    input wire y_p,
    output wire p_z
);
assing p_z = a_p&&~b_p||~y_p&&~b_p||~y_p&&a_p;
    
endmodule