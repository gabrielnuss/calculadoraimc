import 'dart:convert';
import 'dart:io';

import 'package:meuappimc/meuappimc.dart';

void main(List<String> arguments) {
  print("Bem vindo à calculdadora de IMC");
  print("Digite o seu nome:");
  var linha = stdin.readLineSync(encoding: utf8);
  String nome = linha ?? "";

  double peso = 0;

  print("Digite seu peso:");
  linha = stdin.readLineSync(encoding: utf8);
  try {
    peso = double.parse(linha ?? "");
  } catch (e) {
    print("Peso inválido: $linha");
    exit(0);
  }

  double altura = 0;
  print("Digite sua altura:");
  linha = stdin.readLineSync(encoding: utf8);
  try {
    altura = double.parse(linha ?? "");
  } catch (e) {
    print("Altura inválido: $linha");
    exit(0);
  }

  pessoa pessoaImc = pessoa(nome, peso, altura);
  var imcPessoa = pessoaImc.calcularImc();
  var calculo = pessoaImc.getCalculo().round();
  var nomePessoa = pessoaImc.getNome;

  print(
      "$nomePessoa, o resultado do seu IMC é: $calculo, que representa: $imcPessoa");
}
