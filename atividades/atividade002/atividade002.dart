import 'dart:io';

void main() {
  stdout.write('Escolha o exercício:  ');

  String? opcao = stdin.readLineSync();

  switch (opcao) {
    case 'b':
      stdout.write("Digite a medida do primeiro lado: ");
      var lado1 = double.parse(stdin.readLineSync()!);

      stdout.write("Digite a medida do segundo lado: ");
      var lado2 = double.parse(stdin.readLineSync()!);

      stdout.write("Digite a medida do terceiro lado: ");
      var lado3 = double.parse(stdin.readLineSync()!);

      if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
        print("As medidas dos lados devem ser maiores que zero.");
      } else if (lado1 + lado2 > lado3 &&
          lado2 + lado3 > lado1 &&
          lado1 + lado3 > lado2) {
        print("Forma um triângulo.");
      } else {
        print("Não forma um triângulo.");
      }
  }

  switch (opcao) {
    case 'd':
      for (int i = 1; i <= 100; i++) {
        if (i % 2 == 0) {
          print(i);
        }
      }
  }

  switch (opcao) {
    case 'i':
      int dentroIntervalo = 0;
      int foraIntervalo = 0;

      for (int i = 1; i <= 10; i++) {
        stdout.write("Digite o ${i}º número: ");
        int numero = int.parse(stdin.readLineSync()!);

        if (numero >= 10 && numero <= 20) {
          dentroIntervalo++;
        } else {
          foraIntervalo++;
        }
      }
      print("\nQuantidade de números dentro do intervalo: $dentroIntervalo");
      print("Quantidade de números fora do intervalo: $foraIntervalo");
  }
}
