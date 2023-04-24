void main() {
int a = 20;
int b = 5;
int c = 7;
  
  //Verificando Verdadeiro
  bool proposicao1 = a > b;
  bool proposicao2 = b < c;
  
  //Saída
  print('VERDADEIRO ----------------' );
  //        V          V
  print('$a > $b && $b < $c - Resposta: ${proposicao1 && proposicao2}');
   //       V          F
  print('$a > $b || $b > $c - Resposta: ${proposicao1 || proposicao2}');
  
  //Verificando o Falso
  bool proposicao3 = a < b;
  bool proposicao4 = b > c;
  
  //Saída 
  print('FALSO ----------------');
  print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao1}');
  print('$a > $b || $b > $c - Resposta: ${proposicao4 || proposicao3}\n');
  
  //Negar um valor
  bool v = true;
  bool f = false;
  
  //Saída
  print('NEGANDO ---------------');
  print('Negando o V: ${!v}');
  print('Negando o F: ${!f}');
}
