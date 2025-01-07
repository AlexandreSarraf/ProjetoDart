import 'dart:io';

void main() {
  // Solicita o valor total ao usuário
  print("Informe o valor total:");
  String? inputTotal = stdin.readLineSync();
  double? total = double.tryParse(inputTotal ?? "");

  if (total == null || total <= 0) {
    print("Valor inválido! Certifique-se de informar um número positivo.");
    return;
  }

  // Percentuais
  double percentLiber = 0.06;
  double percentAmor = 0.3134;
  double percentTarcisio = 0.3133;
  double percentThiago = 0.3133;
  double percentMontanteThiago = 3 / 100;

  // Cálculos
  double valorLiber = (total * percentLiber);
  double valorAmor = (total * percentAmor);
  double valorTarcisio = (total * percentTarcisio);
  double valorThiago = (total * percentThiago);

  double montanteThiago =
      ((valorThiago - (valorThiago * 0.2)) * percentMontanteThiago);

  // Exibição dos resultados
  print("Total: $total");
  print("Líber ($percentLiber%): $valorLiber");
  print("Amor ($percentAmor%): $valorAmor");
  print("Tarcísio ($percentTarcisio%): $valorTarcisio");
  print("Thiago ($percentThiago%): $valorThiago");
  print("3% do montante de Thiago($percentMontanteThiago%): $montanteThiago");
}
