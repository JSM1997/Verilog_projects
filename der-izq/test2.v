`include "p_f_module_c_inicial_d_i.v"
`include "p_f_module_c_tipica_d_i.v"
`include "p_f_module_c_final_d_i.v"
`include "tester.v"

module testbench();
    input [4:0] A, B;
    wire proximo_estado[3:0];
    wire Z;

    initial begin
        $dumpfile("salida.vcd");
        $dumpvars;
    end

    tester tester_inst (
        .A(A),
        .B(B)
    );

    Celda_inicial_d_i CI_inst (
        .a_p(A[0]),
        .b_p(B[0]),
        .p_x(proximo_estado[0])
    );

    genvar i;
    generate
        for (i = 0; i < 3; i = i + 1) begin : CT_generate
            Celda_tipica_d_i CT_inst (
                .a_p(A[i + 1]),
                .b_p(B[i + 1]),
                .x_p(proximo_estado[i]),
                .p_x(proximo_estado[i + 1])
            );
        end
    endgenerate

    Celda_final_d_i CF_inst (
        .a_p(A[4]),
        .b_p(B[4]),
        .x_p(proximo_estado[3]),
        .p_x(Z)
    );
endmodule
