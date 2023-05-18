import 'dart:io';

void main() {
    // Caminho do arquivo
    String caminhoArquivo = '../desmovel/desmovel-master/arquivos/arquivo.txt' ;

    // Lista de frutas
    List<String> frutas = [ 'Maça', 'Banana', 'Laranja', 'Abacaxi'. 'Morango'];

    // Criar arquivo
    File arquivo = File(caminhoArquivo);

    // Gravar as frutas no arquivo
    /**
    No dart, o métodp then() é usado em cojunto com o método writeAsString()
    para tratar o resultado de uma operação assíncrona.
     */

     arquivo.writeAsString(frutas.join('\n')).then((_){
        print('Arquivo criado com sucesso!');
     }).catchErro((e) {
        print('Erro ao criar o arquivo: $e')
     });
}