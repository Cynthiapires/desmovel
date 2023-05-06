void main (){
  print('=' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: AVANÇADA');
  print('=' * 70);

  var lista = [1, 2, 3, 4, 5];

  var novaLista = lista
  .where((numero) {return numero.isOdd;})
  .map((numero) => numero * 2).toList();
  
print(novaLista);
}