import 'dart:io';
void main() {
  List<String> livros = ['Dom Casmurro', 'O Pequeno Princípe', 'Box Harry Potter']; // Lista de livros
  Map<String, double> precos = {
    'Dom Casmurro': 20.0,
    'Opequeno Príncipe': 25.0,
    'Box Harry Potter': 180.0,
  }; // Map de preços

  List<String> livrosComprados = []; // Lista para armazenar os livros comprados
  double totalGasto = 0.0; // Variável para armazenar o total gasto com livros

  print('Bem-vindo à Book Store!');
  
  bool continuar = true;
  while (continuar) { // While
    print('O que você gostaria de fazer?');
    print('1 - Ver a lista de livros disponíveis');
    print('2 - Ver o preço de um livro');
    print('3 - Comprar um livro');
    print('4 - Ver carrinho de compras');
    print('5 - Finalizar compra e sair');
    print('');

    int opcao = int.parse(stdin.readLineSync()!); // Entrada de dados
    print('');
    switch (opcao) { // Switch
      case 1:
        imprimirLivros(livros); // Função void
        break;
      case 2:
        print('Digite o nome do livro que você deseja saber o preço:');
        String nomeLivro = stdin.readLineSync()!;
        double? preco = obterPreco(nomeLivro, precos); // Função com retorno e parâmetro opcional
        if (preco != null) {
          print('O preço do livro $nomeLivro é R\$ $preco.');
        } else {
          print('Desculpe, não temos o livro $nomeLivro em estoque.');
        }
        break;
      case 3:
        print('Digite o nome do livro que você deseja comprar:');
        String nomeLivro = stdin.readLineSync()!;
        double? preco = obterPreco(nomeLivro, precos); // Função com retorno e parâmetro opcional
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
}

void imprimirLivros(List<String> livros) { // Função void
  print('Nossos livros disponíveis são:');
  livros.forEach((livro) => print(livro)); // Função anônima
}

double? obterPreco(String nomeLivro, [Map<String, double>? precos]) { // Função com retorno e parâmetro opcional
  if (precos != null) {
    return precos[nomeLivro];
  } else {
    return null;
  }
}