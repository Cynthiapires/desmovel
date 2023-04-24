void main() {
int a = 20;
int b = 5;
  
 //verificando as variáveis
  print('_' * 70);
  print('$a = $b Resultado: ${a == b}');
  print('$a ≠ $b Resultado: ${a != b}');
  print('$a > $b Resultado: ${a > b}');
  print('$a < $b Resultado: ${a < b}');
  print('$a ≥	$b Resultado: ${a >= b}');
  print('$a ≤ $b Resultado: ${a <= b}');
  print('_' * 70);
  
  //Podemos atribuir esses resultados em uma variável
  bool igual = a ==  b;
  print('Verificação de igualdade: $igual');
  print('_' * 70);

}
