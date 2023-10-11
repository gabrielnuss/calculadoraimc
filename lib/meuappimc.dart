class pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;
  double _calculo = 0;

  final List<String> _imc = [
    "Magreza grave",
    "Magreza moderada",
    "Magreza Leve",
    "Saudável",
    "Sobrepeso",
    "Obesidade Grau I",
    "Obesidade Grau II(severa)",
    "Obesidade Grau III(mórbida)"
  ];

  void setNome(String nome) {
    this._nome = nome;
  }

  String getNome() {
    return this._nome;
  }

  void setPeso(double peso) {
    this._peso = peso;
  }

  double getPeso() {
    return this._peso;
  }

  void serAltura(double altura) {
    this._altura = altura;
  }

  double getAltura() {
    return this._altura;
  }

  String calcularImc() {
    _calculo = this._peso / (this._altura * this._altura);
    String imc = "";
    switch (_calculo) {
      case < 16:
        imc = this._imc[0];
        break;
      case >= 16 && < 17:
        imc = this._imc[1];
        break;
      case >= 17 && < 18.5:
        imc = this._imc[2];
        break;
      case >= 18.5 && < 25:
        imc = this._imc[3];
        break;
      case >= 25 && < 30:
        imc = this._imc[4];
        break;
      case >= 30 && < 35:
        imc = this._imc[5];
        break;
      case >= 35 && < 40:
        imc = this._imc[6];
        break;
      case >= 40:
        imc = this._imc[7];
        break;
      default:
        imc = "Não foi possível calcular o IMC";
    }
    return imc;
  }

  double getCalculo() {
    return this._calculo;
  }

  pessoa(String nome, double peso, double altura) {
    this._nome = nome;
    this._peso = peso;
    this._altura = altura;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}