import 'dart:io';

void main() {
  List<String> livros = ['Dom Casmurro', 'O Pequeno Príncipe', 'Box Harry Potter'];
  Map<String, double> precos = {
    'Dom Casmurro': 20.0,
    'O Pequeno Príncipe': 25.0,
    'Box Harry Potter': 180.0,
  };

  List<String> livrosComprados = [];
  double totalGasto = 0.0;

  print('Bem-vindo à Book Store!');
  
  bool continuar = true;
  while (continuar) {
    print('O que você gostaria de fazer?');
    print('1 - Ver a lista de livros disponíveis');
    print('2 - Ver o preço de um livro');
    print('3 - Comprar um livro');
    print('4 - Ver carrinho de compras');
    print('5 - Finalizar compra e sair');
    print('');

    int opcao = int.parse(stdin.readLineSync()!);
    print('');
    switch (opcao) {
      case 1:
        imprimirLivros(livros);
        break;
      case 2:
        print('Digite o nome do livro que você deseja saber o preço:');
        String nomeLivro = stdin.readLineSync()!;
        double? preco = obterPreco(nomeLivro, precos);
        if (preco != null) {
          print('O preço do livro $nomeLivro é R\$ $preco.');
        } else {
          print('Desculpe, não temos o livro $nomeLivro em estoque.');
        }
        break;
      case 3:
        print('Digite o nome do livro que você deseja comprar:');
        String nomeLivro = stdin.readLineSync()!;
        double? preco = obterPreco(nomeLivro, precos);
        if (preco != null) {
          livrosComprados.add(nomeLivro);
          totalGasto += preco;
          print('O livro $nomeLivro foi adicionado ao carrinho.');
        } else {
          print('Desculpe, não temos o livro $nomeLivro em estoque.');
        }
        break;
      case 4:
        print('Total gasto: R\$ $totalGasto');
        print('Obrigado pela visita, volte sempre!');
        continuar = false;
        break;
      default:
        print('Opção inválida.');
        break;
    }
  }

  // Gravar os livros disponíveis em um arquivo separado
  File arquivoLivros = File('livros_disponiveis.txt');
  try {
    arquivoLivros.writeAsStringSync(livros.join('\n'));
    print('Livros disponíveis gravados no arquivo "livros_disponiveis.txt".');
  } catch (e) {
    print('Erro ao gravar os livros disponíveis: $e');
  }
}

void imprimirLivros(List<String> livros) {
  print('Nossos livros disponíveis são:');
  livros.forEach((livro) => print(livro));
}

double? obterPreco(String nomeLivro, [Map<String, double>? precos]) {
  if (precos != null) {
    return precos[nomeLivro];
  } else {
    return null;
  }
}
