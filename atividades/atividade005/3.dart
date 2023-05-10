import 'dart:io';

void main() {
  List<String> destinos = ['Rio de Janeiro', 'Salvador', 'Florianópolis'];
  Map<String, double> precos = {
    'Rio de Janeiro': 1500.0,
    'Salvador': 1000.0,
    'Florianópolis': 1200.0,
  };

  while (true) {
    print('Bem-vindo ao sistema de turismo!');
    print('Escolha uma opção:');
    print('1 - Ver destinos disponíveis');
    print('2 - Calcular preço da viagem');
    print('3 - Sair');

    String opcao = stdin.readLineSync()!;

    switch (opcao) {
      case '1':
        listarDestinos(destinos);
        break;

      case '2':
        print('Digite o destino desejado:');
        String? destino = stdin.readLineSync();
        print('Digite o número de pessoas:');
        String? strNumPessoas = stdin.readLineSync();
        int numPessoas = int.tryParse(strNumPessoas!) ?? 1;
        calcularPrecoViagem(destino, numPessoas, precos);
        break;

      case '3':
        print('Obrigado por utilizar o sistema de turismo!');
        return;

      default:
        print('Opção inválida!');
        break;
    }
  }
}

// função para listar os destinos disponíveis (função com parâmetro obrigatório)
void listarDestinos(List<String> destinos) {
  print('Destinos disponíveis:');
  for (var destino in destinos) {
    print('- $destino');
  }
}

// função para calcular o preço da viagem (função com parâmetros obrigatórios e opcionais)
void calcularPrecoViagem(String? destino, int numPessoas, Map<String, double> precos) {
  if (destino == null) {
    print('Destino inválido!');
    return;
  }

  double preco = precos[destino] ?? 0.0;
  double precoTotal = preco * numPessoas;

  // função anônima para exibir o resultado do cálculo
  Function exibirPrecoTotal = () {
    print('Preço total da viagem para $destino: R\$ ${precoTotal.toStringAsFixed(2)}');
  };

  if (numPessoas == 1) {
    exibirPrecoTotal();
  } else {
    print('Preço para $numPessoas pessoas:');
    exibirPrecoTotal();
    double precoPorPessoa = precoTotal / numPessoas;
    print('Preço por pessoa: R\$ ${precoPorPessoa.toStringAsFixed(2)}');
  }
}


// O programa em Dart é um sistema de turismo que permite ao usuário escolher entre as opções de listar os 
//destinos disponíveis, calcular o preço da viagem para um destino escolhido e sair do programa. O programa 
//utiliza um laço `while` para manter o menu principal em execução e faz uso de funções para listar os destinos 
//e calcular o preço da viagem com base no destino escolhido e no número de pessoas que irão viajar. O programa 
//também utiliza condicionais `if` e `switch`, entrada de dados do usuário e um mapa para armazenar os preços dos destinos.
