import 'dart:io';

void main() {
  stdout.write('Escolha o exercício:  ');

  String? opcao = stdin.readLineSync();

  switch (opcao) {
    case 'p':
      int a, b, c;
      // Entrada de dados
      print('insira o primeiro valor:');
      a = int.parse(stdin.readLineSync()!);
      print('Insira o segundo valor:');
      b = int.parse(stdin.readLineSync()!);
      print('Insira o terceiro valor:');
      c = int.parse(stdin.readLineSync()!);

      // Verifica os valores
      if (a == b || a == c || b == c) {
        print('Os valores informados não são diferentes.');
        return;
      }
      // Valores em ordem decrescente
      if (a > b) {
        if (a > c) {
          if (b > c) {
            print('$a > $b > $c');
          } else {
            print('$a > $c > $b');
          }
        } else {
          print('$c > $a > $b');
        }
      } else {
        if (b > c) {
          if (a > c) {
            print('$b > $a > $c');
          } else {
            print('$b > $c > $a');
          }
        } else {
          print('$c > $b > $a');
        }
      }
  }

  switch (opcao) {
    case 'q':
     // Entrada de dados
      double peso, altura, produto;
      print('insira seu peso (kg):');
      peso = double.parse(stdin.readLineSync()!);
      print('Insira sua alturda (m):');
      altura = double.parse(stdin.readLineSync()!);
      
      produto = peso / (altura*2);

      //operador de produto

      // Calculando o IMC
    print('Seu IMC é igual a $peso / ($altura*2)= $produto ');

        if (produto < 18.5) {
          print ('Abaixo do peso');
        } else if (produto < 25) {
          print ('Peso normal');
        } else if (produto < 30) {
          print ('Sobrepeso');
        } else if (produto < 35) {
          print ('Obesidade Grau 1');
        } else if (produto < 40) {
          print ('Obesidade Grau 2');
        } else {
          print ('Obesidade Grau 3');
        }
      }

      switch (opcao) {
    case 's': 
    // Entrada de dados 
    double capital, taxa, tempo, juros;

    //obter os valores do usuario
    print("digite o valor do capital:  ");
    capital = double.parse(stdin.readLineSync()!);

      print("digite o valor da taxa:  ");
    taxa = double.parse(stdin.readLineSync()!);

      print("digite o tempo (Anos):  ");
    tempo = double.parse(stdin.readLineSync()!);

  // calcular juros simples
  juros = (capital*tempo*tempo)/100;

  // Imprimindo resultado
  print("O Juros simples é: $juros");

    
    }

  }

