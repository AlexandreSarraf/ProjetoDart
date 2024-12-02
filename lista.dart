main() {
  List numeros1 = [1, 2, 3, "aluno"];
  print(numeros1);

  List numeros2 = const ["prof", 2, 3, 4];
  print(numeros2);

  List<int> numeros3 = [11, 10, 9, 0, 1, 2, 3];
  print(numeros3);

  List<int> numeros4 = const [1, 2, 3, 4];
  print(numeros4);

  numeros3.add(8);
  print(numeros3);
  numeros3.sort(); //desembaralha a lista de numeros
  print(numeros3);
}
