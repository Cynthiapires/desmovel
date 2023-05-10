import 'dart:io';



void main() {
  List<Map<String, dynamic>> comissarios = [];
  
  // Loop para manter o programa em execução
  while (true) {
    print('--- COMISSÁRIOS DE BORDO ---');
    print('1 - Adicionar comissário');
    print('2 - Listar comissários');
    print('3 - Sair');
    
    // Entrada de dados do usuário
    var opcao = int.parse(stdin.readLineSync()!);
    
    // Condicionais para as opções do usuário
    if (opcao == 1) {
      adicionarComissario(comissarios);
    } else if (opcao == 2) {
      listarComissarios(comissarios);
    } else if (opcao == 3) {
      print('Encerrando programa...');
      break;
    } else {
      print('Opção inválida!');
    }
  }
}

// Função para adicionar comissários
void adicionarComissario(List<Map<String, dynamic>> comissarios) {
  print('--- ADICIONAR COMISSÁRIO ---');
  
  // Entrada de dados do usuário
  print('Nome (obrigatório):');
  var nome = stdin.readLineSync()!;
  
  print('Idade (opcional):');
  var idade = stdin.readLineSync();
  
  // Mapa com os dados do comissário
  var comissario = {'nome': nome};
  if (idade != null && idade.isNotEmpty) {
    comissario['idade'] = int.parse(idade) as String;
  }
  
  // Adiciona o comissário à lista
  comissarios.add(comissario);
  
  print('Comissário adicionado com sucesso!');
}

// Função para listar comissários
void listarComissarios(List<Map<String, dynamic>> comissarios) {
  print('--- LISTA DE COMISSÁRIOS ---');
  
  // Função anônima para formatar a idade do comissário
  var formatarIdade = (idade) => idade != null ? '($idade anos)' : '';
  
  // Loop para exibir cada comissário da lista
  for (var comissario in comissarios) {
    var nome = comissario['nome'];
    var idade = comissario['idade'];
    
    // Saída de dados
    print('- $nome ${formatarIdade(idade)}');
  }
  
  // Caso a lista esteja vazia
  if (comissarios.isEmpty) {
    print('Nenhum comissário cadastrado!');
  }
}

// O código em questão é um programa em Dart com o tema "comissários de bordo". 
//Ele permite que o usuário adicione comissários à lista e visualize a lista de comissários cadastrados. 
//O programa utiliza uma série de recursos do Dart, incluindo loops, funções, condicionais, listas e 
//mapas, além de entrada e saída de dados pelo terminal. Ao executar o programa, o usuário pode escolher 
//entre as opções disponíveis no menu e interagir com o programa até que decida encerrá-lo. O código é um 
//exemplo prático de como esses recursos podem ser utilizados em conjunto para criar um programa funcional.


