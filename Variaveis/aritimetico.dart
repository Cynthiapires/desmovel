void main() {
int a = 10;
int b = 5;
  
  //operador de soma
  int soma = a + b;
  //operador de subtração
  int subtracao = a - b;
  //operador de produto
  int produto = a * b;
  //operador de divisão
  double divisao = a / b;
  //operador de divisão iinteira
  int divInteira = a ~/ b;
  //operador de resto do divisão
  int restoDivisao = a % b;
  
  print('_' * 70);
  print('A soma da $a + $b = $soma');
  print('A subtração de $a - $b = $subtracao');
  print('multiplicação de $a * $b = $produto');
  print('A divisão de $a / $b = $divisao');
  print('A divisão inteira de $a ~/ $b = $divInteira');
  print('O resto da divisão de $a % $b = $restoDivisao');
  print('_' * 70);
}
