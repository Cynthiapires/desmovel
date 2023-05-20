import 'dart:io';
import 'dart:convert';

void main() {
  while (true) {
    final caminho = File('../atividades/atividade006/arquivo.txt');
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
        final mapa = obterInformacoesDoUsuario();
         try {
      
            final mapaCodificado = json.encode(mapa);
            //FileMode.append para gravar
            caminho.writeAsStringSync(mapaCodificado + '\n', mode: FileMode.append);
            print('Mapa gravado com sucesso!');
          } catch (e) {
            print('Ocorreu um erro ao gravar o mapa : $e');
          }
        
        break;
      case 2:
        lerMapasDoArquivo(caminho); // Função para listar as informações
        break;
      case 3:
        final listaMapas = lerDoArquivo(caminho);
        printMapas(listaMapas);

        stdout.write('\nDigite o número do mapa que deseja excluir: ');
        final linhaParaExcluir = int.parse(stdin.readLineSync()!);

        final listaAtualizada = excluirLinha(listaMapas, linhaParaExcluir);

        if(listaAtualizada != null){
          /*
          */
          final novoConteudo = 
          listaAtualizada.map((mapa) => json.encode(mapa)).join('\n');
          caminho.writeAsStringSync(novoConteudo);
          print('Linha ${linhaParaExcluir} excluida com sucesso!'); 
        } else {
          print('Falha ao excluir a linha ${linhaParaExcluir}.');
        }
        break;
      case 4:
        alterarInformacao(caminho); // Função para alterar uma informação
        break;
      case 5:
        sair(); // Função para sair do programa
        break;
      default:
        print('Opção inválida. Tente novamente.');
    }
  } // Fecha While
} // Fecha Main


Map<String, dynamic> obterInformacoesDoUsuario() {
  print('=== Preencheado o Mapa ===');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;

  return {'nome': nome, 'idade': idade, 'cidade': cidade};
}


void lerMapasDoArquivo(File file) {
  final conteudo = file.readAsLinesSync();
  int i = 0;
  while(i < conteudo.length) {
    final linha = conteudo[i].trim();

    if (linha.isNotEmpty) {
      try {
        final mapaDecodificado = json.decode(linha);
        print('\n=== Mapa ${i + 1} ===');
        printMap(mapaDecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  i++;  
  }
}

void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}

List<Map<String, dynamic>> lerDoArquivo(File arquivo) {
  final conteudo = arquivo.readAsLinesSync();
  final listaMapas = [];

  for (var i = 0; i< conteudo.length; i++) {
    final linha = conteudo[i].trim();

    if(linha.isNotEmpty) {
      try {
        final mapaDecodificado = json.decode(linha);
        listaMapas.add(mapaDecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  }
  return listaMapas.cast<Map<String, dynamic>>();
}
List<dynamic>? excluirLinha(List<dynamic> lista, int linhaParaExcluir) {
  if (linhaParaExcluir > 0 && linhaParaExcluir <= lista.length) {
    lista.removeAt(linhaParaExcluir - 1);
    return lista;
  }
  return null;
}
void printMapas(List<dynamic>lista) {
  for (var i = 0; i < lista.length; i++) {
    final mapa = lista[i];
    print('\n=== Mapa ${i + 1} ===');
    printMap(mapa);
  }
}


void alterarInformacao(File caminho) {
  // Implemente o código para alterar uma informação do arquivo aqui
  print('Alterar uma informação');
}

void sair() {
  exit(0);
}
