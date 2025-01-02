class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    this._velocidadeAtual = novaVelocidade;
  }

  bool estaNoLimite(int velocidade) {
    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      return true;
    } else {
      return false;
    }
  }

  int acelerar() {
    //var testeVel = estaNoLimite();

    if (_velocidadeAtual + 5 >= velocidadeMaxima) {
      return velocidadeMaxima;
    } else {
      return _velocidadeAtual + 5;
    }
  }

  int frear() {
    if (_velocidadeAtual - 5 <= 0) {
      return 0;
    } else {
      return _velocidadeAtual - 5;
    }
  }
}
