import 'dart:io';
import 'dart:math';

void main() {
  print(
      ' raiz, potencia, seno, coseno, tangente, logaritimo, maximo ou minimo');
  stdout.write('Escolha uma das funções:  ');

  String? opcao = stdin.readLineSync();

  switch (opcao) {
    case 'raiz':
      //readLineSync - Rntrada de dados string
      // double.parse - casting (mudança de tipo)
      double x = 25;
      double raiz = sqrt(x);
      print('-' * 70);
      print('A raiz quadrada de $x = $raiz');
      print('-' * 70);
      break;

    case 'potencia':
      stdout.write('Informe sua base:  ');
      //readLineSync - Rntrada de dados string
      // double.parse - casting (mudança de tipo)
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Informe seu expoente:  ');
      double expoente = double.parse(stdin.readLineSync()!);
      var resultado = pow(base, expoente);

      print('-' * 70);
      print('A potência é igual a $base ** $expoente = $resultado');
      print('-' * 70);
      break;

    case 'seno':
      stdout.write('Informe seu angulo:  ');
      double angulo = double.parse(stdin.readLineSync()!);

      double resultado = angulo * (pi / 180); // converte os graus para radianos
      double seno = sin(resultado);

      print('-' * 70);
      print("O seno de $angulo radianos é $seno");
      print('-' * 70);
      break;

    case 'coseno':
      stdout.write('Informe seu angulo em radianos:  ');
      double angulo = double.parse(stdin.readLineSync()!);

      double cosseno = cos(angulo);

      print('-' * 70);
      print('O cosseno de $angulo é $cosseno');
      print('-' * 70);
      break;

    case 'tangente':
      stdout.write('Informe seu angulo:  ');
      double angulo = double.parse(stdin.readLineSync()!);

      double anguloRadianos = angulo * pi / 180;
      double tangente = tan(anguloRadianos);

      print('-' * 70);
      print("A tangente de $angulo graus é $tangente.");
      print('-' * 70);
      break;

    case 'logaritimo':
      stdout.write('Informe um valor:  ');
      double x = double.parse(stdin.readLineSync()!);

      double result = log(x);

      print('-' * 70);
      print("O logaritmo natural de $x é $result");
      print('-' * 70);
      break;

    case 'maximo':
      stdout.write('Informe o valor:  ');
      double x = double.parse(stdin.readLineSync()!);
      stdout.write('Informe o valor:  ');
      double y = double.parse(stdin.readLineSync()!);

      double maximo = max(x, y);

      print('-' * 70);
      print("O máximo é $maximo");
      print('-' * 70);
      break;

    case 'maximo':
      stdout.write('Informe o valor:  ');
      double x = double.parse(stdin.readLineSync()!);
      stdout.write('Informe o valor:  ');
      double y = double.parse(stdin.readLineSync()!);

      double minimo = min(x, y);

      print('-' * 70);
      print("O máximo é $minimo");
      print('-' * 70);
  }
}
