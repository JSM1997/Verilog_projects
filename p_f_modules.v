/*PRIMER MODULO: Diseño de la celda típica para el caso derecha-izquierda*/
module celda_inicial_d_i #(
    parameter N=3;/*preguntar al profe si esta es una definición valida porque no se puede pedir */ 
    
) (/*Celda inicial no tiene entradas de estado presente(son evaluadas), tiene entradas primarias, y salidas de proximo estado*/
    input wire a_p, 
    input wire b_p,
    output wire p_x,
    output wire p_y
);
assing p_x = 
    
endmodule

module celda_tipica_d_i #(
    parameter N>=3;/*preguntar al profe si esta es una definición valida porque no se puede pedir */ 
    
) (/*Tiene 4 entradas dos salidas*/
    input wire a_p, 
    input wire b_p,
    input wire x_p, 
    input wire y_p,
    output wire p_x,
    output wire p_y
);
assing p_x = 1'b1;
assing p_y = y_p&&~a_p||y_p&&b_p||~a_p&&b_p;
    
endmodule

module celda_final_d_i #(
    parameter N>=3;/*preguntar al profe si esta es una definición valida porque no se puede pedir */ 
    
) (/*Tiene 4 entradas 1 salida*/
    input wire a_p, 
    input wire b_p,
    input wire x_p, 
    input wire y_p,
    output wire p_z,
);
assing p_z = a_p&&~b_p||~y_p&&~b_p||~y_p&&a_p;
    
endmodule