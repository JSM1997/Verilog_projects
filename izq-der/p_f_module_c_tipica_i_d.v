module Celda_tipica_i_d (
    parameter N = 3
)(
    input wire a_p,
    input wire b_p,
    input wire x_p,
    input wire y_p,
    output wire p_x,
    output wire p_y
);
    wire notA;

    not U1 (.a(a_p), .b(notA));
    and U2 (.a(notA), .b(b_p), .out(p_x));
    and U3 (.a(x_p), .b(b_p), .out(p_y));
    and U4 (.a(notA), .b(x_p), .out(p_x));

    // Sumar
    or U5 (.a(p_x), .b(p_y), .out(p_x));

    assign p_y = y_p;

endmodule
