class Produto {
  int? codigo;
  String? nome;
  num? preco;
  num? desconto;

  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  num? get precoComDesconto {
    if (preco != null && desconto != null) {
      return (1 - desconto!) * preco!;
    }
    return 0;
  }
}

main() {
  var produto = Produto(nome: "Notebook", preco: 3500, desconto: 0.1);
}
