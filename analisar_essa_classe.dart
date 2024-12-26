class Pessoa {
  // Atributos ou variáveis de instância
  String? nome;
  int? idade;
  var _sobrenome; // Variável privada

  // Construtor
  Pessoa(this.nome, this.idade);

  // Construtor nomeado
  Pessoa.completo(this.nome, this.idade, this._sobrenome);

  // Métodos
  void mostrarDados() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Sobrenome: $_sobrenome');
  }

  // Getter
  String get sobrenome => _sobrenome;

  // Setter
  set sobrenome(String sobrenome) {
    if (sobrenome.length > 3) {
      _sobrenome = sobrenome;
    } else {
      print('Sobrenome inválido');
    }
  }

  // Método estático
  static void saudacao() {
    print('Bem-vindo!');
  }
}

void main() {
  var pessoa1 = Pessoa('Alice', 25);
  Pessoa.saudacao(); // Chama método estático
  pessoa1.mostrarDados();

  var pessoa2 = Pessoa.completo('Carlos', 30, 'Silva');
  pessoa2.mostrarDados();
  pessoa2.sobrenome = 'So'; // Usando o setter
  pessoa2.mostrarDados();
}
