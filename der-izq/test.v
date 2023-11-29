`include "p_f_module_red.v"

module testbench;

  reg [2:0] palabraA, palabraB;
  wire Z;

  initial begin
      $dumpfile("generate.vcd");
      $dumpvars;
  end

  // Inicialización de palabras A y B
  initial begin
    palabraA = 3'b001; // Modifica los valores según tus necesidades
    palabraB = 3'b010;

    // Ejecutar simulación durante 2000 unidades de tiempo
    #2000 $finish;
  end

  // Instanciación del módulo red
  red uut (
    .palabraA(palabraA),
    .palabraB(palabraB),
    .Z(Z)
  );

  initial
      begin
      $monitor ("Resultado Z: %b", Z);
      end

endmodule
