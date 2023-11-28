`include "p_f_module_c_inicial_i_d.v"
`include "p_f_module_c_tipica_i_d.v"
`include "p_f_module_c_final_i_d.v"

module red_izq_der (

    input wire [2:0] palabraA,
    input wire [2:0] palabraB,
    output wire a_menor_b,
    output wire a_igual_b,
    output wire a_mayor_b
);

    wire [2:0] menor, igual, mayor;

    // Compuertas AND, OR y NOT para la comparación
    and u_and1 (menor[0], ~palabraA[0], palabraB[0]);
    and u_and2 (menor[1], ~(palabraA[1] | palabraA[0]), palabraB[1]);
    and u_and3 (menor[2], ~(palabraA[2] | palabraA[1] | palabraA[0]), palabraB[2]);

    and u_and4 (igual[0], palabraA[0], palabraB[0]);
    and u_and5 (igual[1], palabraA[1], palabraB[1]);
    and u_and6 (igual[2], palabraA[2], palabraB[2]);

    and u_and7 (mayor[0], palabraA[0], ~palabraB[0]);
    and u_and8 (mayor[1], palabraA[1] | palabraA[0], ~palabraB[1]);
    and u_and9 (mayor[2], palabraA[2] | palabraA[1] | palabraA[0], ~palabraB[2]);

    or u_or1 (a_menor_b, menor[0] | menor[1] | menor[2]);
    or u_or2 (a_igual_b, igual[0] | igual[1] | igual[2]);
    or u_or3 (a_mayor_b, mayor[0] | mayor[1] | mayor[2]);

endmodule
