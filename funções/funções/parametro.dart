void main() {
//Declarações
  int valor1 = 10;
  int valor2 = 20;

  int resultadoSoma = somaValores(valor1, valor2);

//Saída
  print('O Resultado dos valores somado: $resultadoSoma');
}

int somaValores(int valor1, [int valor2 = 0]) {
  print('Valor 1: $valor1');
  print('Valor 2: $valor2');

  return valor1 + valor2;
}
