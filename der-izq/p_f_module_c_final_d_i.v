module Celda_final_d_i#(
    parameter N=3

) (
    input wire a_p,
    input wire b_p,
    input wire x_p,
    output wire p_x
);

    wire notA;

    // Negar A
    not not1 (notA, a_p);

    //  ~A con B
    and andA (notA, b_p, p_x);

    //  x con B
    and andB (x_p, b_p, notA);

    // Sumar
    or andC (p_x, notA, p_x);

endmodule
