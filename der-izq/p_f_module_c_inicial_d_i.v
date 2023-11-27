module Celda_inicial_d_i #(
    parameter N=3

) (
    input wire a_p,
    input wire b_p,
    input wire x_p,
    output wire p_x
);
wire notA;

    // Negar A
    not U1 (a_p, notA);

    //  ~A con B
    and U2 (notA, b_p, p_x);

endmodule
