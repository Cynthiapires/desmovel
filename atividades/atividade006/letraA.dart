import 'dart:io';
import 'dart:convert';

void main() {
  while (true) {
    final caminho = File('../atividade06/arquivo.txt');
    // Menu
    print('''
1. Criar arquivo
2. Listar as informações
3. Excluir uma informação
4. Alterar uma informação
5. Sair
''');

    stdout.write('Escolha uma opção: ');
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        criarArquivo(caminho); // Função void para criar o arquivo
        break;
      default:
    }
  } // Fecha While
} // Fecha Main

void criarArquivo(File caminho) {
  Map<String, dynamic> mapa = {}; // Mapa vazio
  try {
    final mapaCodificado = json.encode(mapa);
    // writeAsStringSync: grava o arquivo, o mode: append aqui é opcional
    // pois ainda não temos informações para anexar
    caminho.writeAsStringSync(mapaCodificado + '\n', mode: FileMode.append);
    print('Mapa gravado com sucesso!');
  } catch (e) {
    print('Ocorreu um erro ao gravar o mapa: $e');
  }
}
