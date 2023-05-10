import 'dart:io';

void main() {
  var locais = {
    'Rio de Janeiro': 'RJ',
    'Florianópolis': 'SC',
    'Gramado': 'RS',
    'Fortaleza': 'CE',
    'Salvador': 'BA'
  };

  while (true) {
    print('Informe o destino que deseja visitar:');
    var destino = stdin.readLineSync();

    if (destino == null || destino.isEmpty) {
      print('Destino inválido.');
      continue;
    }

    var sigla = siglaEstado(locais, destino);

    if (sigla == null) {
      print('Destino não encontrado.');
      continue;
    }

    print('A sigla do estado de $destino é $sigla.');
    print('Deseja continuar? (S/N)');
    var resposta = stdin.readLineSync()?.toUpperCase() ?? '';

    if (resposta == 'N') {
      break;
    }
  }

  print('Programa encerrado.');
}

// Função com retorno que retorna a sigla do estado de um determinado destino.
String? siglaEstado(Map<String, String> locais, String destino) {
  var sigla = locais[destino];
  return sigla;
}

// Função com parâmetros opcionais que exibe informações sobre um hotel.
void hotelInfo(String nome, {String? endereco, int? quartos, double? diaria}) {
  print('Nome: $nome');
  if (endereco != null) {
    print('Endereço: $endereco');
  }
  if (quartos != null) {
    print('Quartos disponíveis: $quartos');
  }
  if (diaria != null) {
    print('Diária: R\$ $diaria');
  }
}

// Função anônima que verifica se um destino é nacional ou internacional.
Function nacionalOuInternacional = (String destino) {
  if (destino == 'Paris' || destino == 'Londres' || destino == 'Nova York') {
    print('$destino é um destino internacional.');
  } else {
    print('$destino é um destino nacional.');
  }
};

// Lista de pontos turísticos do Rio de Janeiro.
List<String> pontosTuristicos = ['Cristo Redentor', 'Pão de Açúcar', 'Copacabana', 'Jardim Botânico'];

// Switch que exibe informações sobre um ponto turístico escolhido pelo usuário.
void exibirPontoTuristico(String ponto) {
  switch (ponto) {
    case 'Cristo Redentor':
      print('O Cristo Redentor é uma estátua do Cristo localizada no topo do morro do Corcovado.');
      break;
    case 'Pão de Açúcar':
      print('O Pão de Açúcar é um morro localizado na cidade do Rio de Janeiro.');
      break;
    case 'Copacabana':
      print('Copacabana é uma das praias mais famosas da cidade do Rio de Janeiro.');
      break;
    case 'Jardim Botânico':
      print('O Jardim Botânico do Rio de Janeiro é um dos mais importantes jardins botânicos do mundo.');
      break;
    default:
      print('Ponto turístico não encontrado.');
  }
}

// O programa de turismo em Dart utiliza conceitos básicos da linguagem, como loops, funções e condicionais, 
//para criar um mapa de locais com suas siglas de estados correspondentes. Ao receber o nome do destino turístico 
//escolhido pelo usuário, o programa verifica se o destino é válido e, se for, utiliza uma função para encontrar 
//a sigla correspondente ao estado. Em seguida, exibe a sigla do estado e permite que o usuário continue ou interrompa 
//o programa. O programa também possui outras funções, como a exibição de informações sobre hotéis e pontos turísticos.
