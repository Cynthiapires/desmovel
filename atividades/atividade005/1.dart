import 'dart:io';

void main() {
  List<String> frutas = ['maçã', 'banana', 'laranja']; // Lista
  Map<String, int> precos = {
    'maçã': 2,
    'banana': 3,
    'laranja': 4,
  }; // Map

  print('Bem-vindo à nossa loja de frutas!');
  
  bool continuar = true;
  while (continuar) { // While
    print('O que você gostaria de fazer?');
    print('1 - Ver a lista de frutas disponíveis');
    print('2 - Ver o preço de uma fruta');
    print('3 - Sair da loja');

    int opcao = int.parse(stdin.readLineSync()!); // Entrada de dados

    switch (opcao) { // Switch
      case 1:
        imprimirFrutas(frutas); // Função void
        break;
      case 2:
        print('Digite o nome da fruta que você deseja saber o preço:');
        String nomeFruta = stdin.readLineSync()!;
        int? preco = obterPreco(nomeFruta, precos); // Função com retorno e parâmetro opcional
        if (preco != null) {
          print('O preço da $nomeFruta é $preco reais.');
        } else {
          print('Desculpe, não temos $nomeFruta em estoque.');
        }
        break;
      case 3:
        print('Obrigado pela visita, volte sempre!');
        continuar = false;
        break;
      default:
        print('Opção inválida.');
        break;
    }
  }
}

void imprimirFrutas(List<String> frutas) { // Função void
  print('Nossas frutas disponíveis são:');
  frutas.forEach((fruta) => print(fruta)); // Função anônima
}

int? obterPreco(String nomeFruta, [Map<String, int>? precos]) { // Função com retorno e parâmetro opcional
  if (precos != null) {
    return precos[nomeFruta];
  } else {
    return null;
  }
}