module Celda_tipica_d_i #(
    parameter N=3/*preguntar al profe si esta es una definición valida porque no se puede pedir */ 
    
) (/*Tiene 4 entradas dos salidas*/
    input wire a_p, 
    input wire b_p,
    input wire x_p, 
    input wire y_p,
    output wire p_x,
    output wire p_y
);
assing p_x = 1'b1;
assing p_y = y_p&~a_p|y_p&b_p|~a_p&b_p;
    
endmodule
