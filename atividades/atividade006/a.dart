import 'dart:io';

void main() {
  bool running = true;

  while (running) {
    print('Selecione uma opção:');
    print('1. Criar arquivo');
    print('2. Gravar lista no arquivo');
    print('3. Ler arquivo');
    print('4. Apagar itens do arquivo');
    print('5. Alterar itens da lista');
    print('6. Sair');


    var option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        criarArquivo();
        break;
      case 2:
        gravarListaNoArquivo();
        break;
      case 3:
        lerArquivo();
        break;
      case 4:
        apagarItensDoArquivo();
        break;
      case 5:
        ();
        break;
      case 6:
        running = false;
        break;
      default:
        print('Opção inválida. Tente novamente.');
      }
    
    print('\n');
  }
  
  print('Programa encerrado.');
}

void criarArquivo() {
  print('Digite o nome do arquivo:');
  var nomeArquivo = stdin.readLineSync()!;
  var file = File(nomeArquivo);

  if (file.existsSync()) {
    print('O arquivo já existe.');
  } else {
    file.createSync();
    print('Arquivo criado com sucesso.');
  }
}

void gravarListaNoArquivo() {
    print('Digite o nome do arquivo:');
    var nomeArquivo = stdin.readLineSync()!;
    var file = File(nomeArquivo);

  if (!file.existsSync()) {
    print('O arquivo não existe.');
    return;
  }

  print('Digite os itens separados pro vírgula:');
  var itens = stdin.readLineSync()!.split(',');

  var sink = file.openWrite();
  sink.writeAll(itens, '\n');
  sink.close();

  print('Itens gravados no arquivo.');
}

void lerArquivo() {
    print('Digite o nome do arquivo:');
  var nomeArquivo = stdin.readLineSync()!;
  var file = File(nomeArquivo);

  if (!file.existsSync()) {
    print('O arquivo não existe.');
    return;
  }

  var lines = file.readAsLinesSync();

  if (lines.isEmpty) {
    print('O arquivo está vazio.');
  } else {
    print('Conteúdo do arquivo:');
    for (var line in lines) {
      print(line);
    }
  }
}

void apagarItensDoArquivo() {
    print('Digite o nome do arquivo:');
  var nomeArquivo = stdin.readLineSync()!;
  var file = File(nomeArquivo);

  if (!file.existsSync()) {
    print('O arquivo não existe.');
    return;
  }

  file.writeAsStringSync('');
  print('Itensapagados do arquivo.');
}


