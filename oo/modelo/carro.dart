class Carro {
  final int _velocidadeMaxima;
  int velocidadeAtual = 0;

  Carro([this._velocidadeMaxima = 200]);

  bool estaNoLimite(int velocidade) {
    if (velocidadeAtual +5 >= _velocidadeMaxima) {
      return true;
    } else {
      return false;
    }
  }

  int acelerar() {
    //var testeVel = estaNoLimite();

    if () {
      return _velocidadeMaxima;
    } else {
      return velocidadeAtual + 5;
    }
  }

  int frear() {
    if (velocidadeAtual -5 <= 0) {
      return 0;
    }else{
      return velocidadeAtual - 5;
    }
  }
}
