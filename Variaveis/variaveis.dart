void main() {
 //Valores inteiros
  int idade = 50;
  //Valores com ponto flutuante
  double altura = 1.80;
  //Valores Booleanos
  bool opcao = true;
  //Valores String
  String nome = "Jhon Does";
    
   /* IMPORTANTE! - Não posso mudar o tipo ja declarado
    * var teste = 'josé'
    * teste = 100;
    * 
    * Darte tambpém trabalha com inferencia de calores
    * vae numwro = 10 ==> numero é inteiro
    * */
  
  //Uso de RAMPLATE STRING no print para dar saída
  print('_' * 70);
  print('Meu nome é $nome, tenho $idade anos');
  print('Minha altura é ${altura.toStringAsFixed(2)}\m de altura)');
  print("Esta é uma aula de Dart? $opcao");
  print('_' * 70);
}