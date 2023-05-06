void main (){
  print('=' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: BÁSICA');
  print('=' * 70);

  List<int> numeros = [1, 2, 3, 4, 5];

  numeros.forEach((numero) {
    print(numero * 2)
  });

}