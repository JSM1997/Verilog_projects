//se incluyen los modulos de celdas
`include "p_f_module_c_inicial_d_i.v"
`include "p_f_module_c_tipica_d_i.v"
`include "p_f_module_c_final_d_i.v"

module red #(parameter N = 4)(
    input [N:0] a_p, //entrada A
    input [N:0] b_p, //entrada A
    output wire [N-1:0] x_p, //salida x, la cual representa el proximo estado
    output wire Z //salida final Z
);

    Celda_inicial_d_i Ci_inst ( //instanciacion de la celda inicial
        .a_p(a_p[0]),
        .b_p(b_p[0]),
        .p_x(x_p[0])
    );

    //inicio del ciclo para la instanciacion de la celda tipica
    genvar i; //se declara la variable de generación
    generate
        for (i = 0; i < N-1; i = i + 1) begin : Ct_generate
            Celda_tipica_d_i Ct_inst (
                .a_p(a_p[i + 1]),
                .b_p(b_p[i + 1]),
                .x_p(x_p[i]),
                .p_x(x_p[i + 1])
            );
        end
    endgenerate

    Celda_final_d_i Cf_inst (
    .a_p(a_p[N]),
    .b_p(b_p[N]),
    .x_p(x_p[N-1]),
    .p_x(Z)
);

endmodule
