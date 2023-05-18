import 'dart:io';

void main() {
    // Caminho do arquivo
    String caminhoArquivo = '../desmovel/desmovel-master/arquivos/arquivo.txt' ;

    // Abrir arquivo
    File arquivo = File(caminhoArquivo);

     arquivo.readAsLines().then((linhas){
       // Imprimir a lista de frutas
        print('Lista de Frutas:');
        for (String linha in linhas){
          print(linha);
        }
     }).catchErro((e) {
        print('Erro ao ler o arquivo: $e')
     });
}