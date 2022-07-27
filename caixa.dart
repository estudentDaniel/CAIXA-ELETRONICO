import 'dart:io';

void main(List<String> args) {
  print("Seja bem vindo...Digite o valor do saque !");
  String? valor = stdin.readLineSync();
  var entrada = double.parse(valor!);
  double nota50 = 50, nota20 = 20, nota10 = 10, nota5 = 5, moeda1 = 1;

  double cinquenta = (entrada / nota50).floorToDouble();
  double resto = entrada % nota50;

  double vinte = (resto / nota20).floorToDouble();
  resto = resto % nota20;

  double dez = (resto / nota10).floorToDouble();
  resto = resto % nota10;
  
  double cinco = (resto / nota5).floorToDouble();
  resto = resto % nota5;

  double um = resto;

  print("Voce está recebendo nota: $cinquenta de $nota50 ");
  print("Voce está recebendo nota: $vinte de $nota20 ");
  print("Voce está recebendo nota: $dez de $nota10 ");
  print("Voce está recebendo nota: $cinco de $nota5 ");
  print("Voce está recebendo nota: $um de $moeda1 ");
}
