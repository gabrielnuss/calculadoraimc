import 'package:meuappimc/meuappimc.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular IMC', () {
    pessoa pessoaImc = pessoa("Gabriel", 95, 1.95);
    pessoaImc.calcularImc();
    var calculo = pessoaImc.getCalculo().round();
    expect(calculo, 25);
  });
}
