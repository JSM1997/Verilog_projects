`include "p_f_module_c_inicial_d_i.v"
`include "p_f_module_c_tipica_d_i.v"
`include "p_f_module_c_final_d_i.v"

module red_d_i (

    input [2:0] palabraA,
    input [2:0] palabraB,
    output reg resultado
);
    wire c1;
    wire c2;
    wire c3;

    Celda_inicial_d_i ci (palabraA, palabraB, 1'b0, c1); //Instanciación en c1 se guarda el resultado de celda inicial
    Celda_tipica_d_i ct (palabraA, palabraB, 1'b0, c2); //Instanciación en c2 se guarda el resultado de celda tipica
    Celda_final_d_i cf (palabraA, palabraB, 1'b0, c3);   //Instanciación en c3 se guarda el resultado de celda final

endmodule
