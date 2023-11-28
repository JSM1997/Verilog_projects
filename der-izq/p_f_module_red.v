`include "p_f_module_c_inicial_d_i.v"
`include "p_f_module_c_tipica_d_i.v"
`include "p_f_module_c_final_d_i.v"

module red (
    input [2:0] palabraA,
    input [2:0] palabraB,
    output wire Z
);

wire c1;
wire c2;

Celda_inicial_d_i ci (.a_p(palabraA[0]), .b_p(palabraB[0]), .p_x(c1)); // Instanciación en c1 se guarda el resultado de celda inicial
Celda_tipica_d_i ct (.a_p(palabraA[1]), .b_p(palabraB[1]), .p_x(c2)); // Instanciación en c2 se guarda el resultado de celda tipica
Celda_final_d_i cf (.a_p(palabraA[2]), .b_p(palabraB[2]), .p_x(Z)); // Instanciación en c3_temp se guarda el resultado de celda final


endmodule
