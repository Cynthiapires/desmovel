import 'dart:io';

void main() {
  List<int> numAdicionados = [];
  List<int> numRemovidos = [];
  List<int> listanum = [];

  while (true) {
    print('O que deseja fazer?');
    print('1 - Adicionar número');
    print('2 - Remover número');
    print('3 - Sair');
    
    String? nome = stdin.readLineSync();

    switch (nome) {
      case '1':
        stdout.write(' o número a ser adicionado:');
        int nome = int.parse(stdin.readLineSync()!);
        listanum.add(nome);
        numAdicionados.add(nome);
        break;
      case '2':
        if (listanum.isEmpty) {
          print('A lista está vazia.');
          break;
        }
        print('Digite o índice do número a ser removido:');
        int indice = int.parse(stdin.readLineSync()!);
        if (indice < 0 || indice >= listanum.length) {
          print('Índice inválido.');
          break;
        }
        break;
        case '3':
        print('Saindo...');
        print('Números finais: $listanum');
        return;
      default:
        print('Opção inválida.');
        break;

    }
  }
}
