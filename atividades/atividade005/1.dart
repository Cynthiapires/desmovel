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

 //O código em questão é uma aplicação simples que simula uma loja de frutas, com a utilização de listas, mapas, 
 //funções com e sem retorno, condicionais, loops e entrada de dados. Ele permite ao usuário escolher entre três 
 //opções: ver a lista de frutas disponíveis, ver o preço de uma fruta específica ou sair da loja. Ao escolher a opção 1, 
 //o código imprime a lista de frutas. Ao escolher a opção 2, o usuário digita o nome da fruta desejada e o código retorna 
 //o preço correspondente, se estiver presente no mapa de preços, caso contrário, ele informa que a fruta não está em estoque. 
 //Ao escolher a opção 3, o usuário sai da loja. O código é um exemplo simples de como usar algumas funcionalidades básicas da linguagem Dart.

