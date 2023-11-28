module red_izq_der #(
    parameter N = 3
)(
    input [2:0] palabraA,
    input [2:0] palabraB,
    output reg a_menor_b,
    output reg a_igual_b,
    output reg a_mayor_b
);
    // Comparación
    always @(posedge palabraA or posedge palabraB) begin
        if (palabraA < palabraB) begin
            a_menor_b <= 1;
            a_igual_b <= 0;
            a_mayor_b <= 0;
        end else if (palabraA == palabraB) begin
            a_menor_b <= 1;
            a_igual_b <= 1;
            a_mayor_b <= 0;
        end else begin
            a_menor_b <= 0;
            a_igual_b <= 0;
            a_mayor_b <= 1;
        end
    end

endmodule
