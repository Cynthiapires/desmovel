import 'dart:io';

void main() {
  String frase = 'Gal Gadot! Saranghae !!';

  int tamanhoString = frase.length;
  String fraseMaiuscula = frase.toLowerCase();
  String fraseMinuscula = frase.toUpperCase();
  String frasesemespacos = frase.trim();
  String frasemodular = frase.substring(0, 10);
  List<String> Lista = frase.split(" ");
  String novoTexto = frase.replaceAll("Gal", "carlinhos");
  bool resultado = frase.contains("Gal");
  bool resultado2 = frase.startsWith("O rato");
  bool resultado3 = frase.endsWith("de Roma");

  print('-' * 70);
  print(frase);
  print('=' * 70);
  print('Tamanho da frase: $tamanhoString');
  print('Frase em maiúsculo: $fraseMaiuscula');
  print('Frase em minúsculo: $fraseMinuscula');
  print('$frasesemespacos');
  print('$frasemodular');
  print('$Lista');
  print('$novoTexto');
  if (resultado) {
    print("A string contém a substring 'Gal'.");
  } else {
    print("A string não contém a substring 'Gal'.");
  }
  if (resultado2) {
    print("A string começa com a substring 'O rato'.");
  } else {
    print("A string não começa com a substring 'O rato'.");
  }
  if (resultado3) {
    print("A string termina com a substring 'de Roma'.");
  } else {
    print("A string não termina com a substring 'de Roma'.");
  }
  print('-' * 70);
}
