import 'dart:io';

void main() {
    // Caminho do arquivo
    String caminhoArquivo = '../desmovel/desmovel-master/arquivos/arquivo.txt' ;

    // Map de frutas quantidades
    Map<String, int> frutas = [ 
      'Maça': 5, 
      'Banana': 10, 
      'Laranja': 8, 
      'Abacaxi': 3, 
      'Morango': 15,
      ];

    // Criar arquivo
    File arquivo = File(caminhoArquivo);

    // Gravar as frutas no arquivo
     arquivo.writeAsString(mapaParaTexto(frutas)).then((_){
        print('Arquivo criado com sucesso!');
     }).catchErro((e) {
        print('Erro ao criar o arquivo: $e')
     });
}
    String mapaParaTexto(map<String, int> map) {
      String texto = '';
      map.forEach((chave, valor) {
        texto += '$chave: $valor\n';
      })
      return texto;
    }
