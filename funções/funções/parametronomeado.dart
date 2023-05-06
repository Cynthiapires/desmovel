import 'dart:io';

void main() {

String nomeFuncionario;
String cargoFuncionario;
double salarioFuncionario;

  print('-' * 70);
  stdout.write('Nome do funcionário:  ');
  nomeFuncionario = stdin.readLineSync()!;
  stdout.write('Cargo Ocupado:  ');
  cargoFuncionario = stdin.readLineSync()!;
  stdout.write('Salrio do funcionário:  ');
  salarioFuncionario = double.parse(stdin.readLineSync()!);
    print('-' * 70);

exibirCadastro(
  cargo: cargoFuncionario,
  funcionario: nomeFuncionario,
  salario: salarioFuncionario);  
}

dynamic exibirCadastro (
  {
    required String funcionario,
    required String cargo,
    required String salario
    })

  {
    print('-' * 70);
    print('Nome do funcionário: $funcionario');
    print('Cargo: $cargo');
    print('Salário: $salario');
    print('-' * 70);

  }

                
