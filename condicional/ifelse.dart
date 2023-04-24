void main() {
  //Condicionais
  //Declaraçaõ de variáveis
  int a = 10;
  int b = 5;

  //Condicional simples, Else opcional
  if (a > b) {
    print('Informação Verdadeira!');
  } else {
    print('Informação Falsa');
  }

  //Declarando Variável
  String nome = 'john';

  if (nome != 'Jane') {
    print('Os nomes são diferentes!');
  } else {
    print('Os nomes são iguais');
  }

  //Nas condicionais encadeadas são testas mais de uma condição
  double media = 4;

  if (media >= 7.5 && media <= 10) {
    print('O aluno passou de ano!');
  } else if (media >= 5 && media < 7.5) {
    print('Aluno em recuperacao!');
  } else {
    print('Aluno Reprovado');
  }
}
