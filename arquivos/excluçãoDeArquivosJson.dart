import 'dart:io';
import 'dart:convert';

void main() {
  final caminho = File('../arquivo/teste_json.txt');

  final listaMapas = lerMapasDoArquivo(caminho);
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
}

List<Map<String, dynamic>> lerMapasDoArquivo(File arquivo) {
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
  /*
  
  */
  return listaMapas.cast<Map<String, dynamic>>();
}

List<dynamic>? excluirLinha(List<dynamic> lista, int linhaParaExcluir) {
  if (linhaParaExcluir > 0 && linhaParaExcluir <= lista.length) {
    lista.removeAt(linhaParaExcluir - 1);
    return lista;
  }
  return null;
}

//Faz a montagem
void printMapas(List<dynamic>lista) {
  for (var i = 0; i < lista.length; i++) {
    final mapa = lista[i];
    print('\n=== Mapa ${i + 1} ===');
    printMap(mapa);
  }
}

//Faz a varredura
void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}