import 'dart:io';

void main() {
  List<String> nomesAdicionados = [];
  List<String> nomesRemovidos = [];
  List<String> listaNomes = [];

  while (true) {
    print('O que deseja fazer?');
    print('1 - Adicionar nome');
    print('2 - Remover nome');
    print('3 - Sair');

    String escolha = (stdin.readLineSync()!);

    switch (escolha) {
      case '1':
        print('Digite o nome a ser adicionado:');
        String nome = stdin.readLineSync()!;
        listaNomes.add(nome);
        nomesAdicionados.add(nome);
        break;
      case '2':
        if (listaNomes.isEmpty) {
          print('A lista está vazia.');
          break;
        }
        print('Digite o índice do nome a ser removido:');
        int indice = int.parse(stdin.readLineSync()!);
        if (indice < 0 || indice >= listaNomes.length) {
          print('Índice inválido.');
          break;
        }
        String nomeRemovido = listaNomes.removeAt(indice);
        nomesRemovidos.add(nomeRemovido);
        break;
      case '3':
        print('Saindo...');
        print('Nomes finais: $listaNomes');
        return;
      default:
        print('Opção inválida.');
        break;
    }
  }
}
