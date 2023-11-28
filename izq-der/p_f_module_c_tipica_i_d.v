module Celda_tipica_i_d (

    input wire a_p,
    input wire b_p,
    input wire x_p,
    input wire y_p,
    output wire p_x,
    output wire p_y
);

    assign p_x = x_p && y_p || x_p && ~b_p || x_p && a_p;
    assign p_y = y_p || x_p && b_p;

endmodule
