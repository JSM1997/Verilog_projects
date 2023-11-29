module tester(output reg [4:0] A, B);

initial
begin
// Caso de prueba 1
A = 5'b11001;
B = 5'b10010;
#10; // Ejecutar la simulación durante un tiempo (ajusta según sea necesario)

// Caso de prueba 2
A = 5'b11101;
B = 5'b01100;
#10;

// Caso de prueba 3
A = 5'b00101;
B = 5'b10001;
#10;

// Caso de prueba 4
A = 5'b01111;
B = 5'b00111;
#10;

// Agrega más casos de prueba según sea necesario

#40 $finish; // Finalizar la simulación después de un tiempo total
end

endmodule
