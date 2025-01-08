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
  double percentMontanteThiago = 0.03;

  // Cálculos
  double valorLiber = (total * percentLiber);
  double valorAmor = (total * percentAmor);
  double valorTarcisio = (total * percentTarcisio);
  double valorThiago = (total * percentThiago);

  double montanteThiago =
      ((valorThiago - (valorThiago * 0.2)) * percentMontanteThiago);

  // Exibição dos resultados
  print("Total: $total");
  print("Líber ($percentLiber%): ${valorLiber.toStringAsFixed(2)}");
  print("Amor ($percentAmor%): ${valorAmor.toStringAsFixed(2)}");
  print("Tarcísio ($percentTarcisio%): ${valorTarcisio.toStringAsFixed(2)}");
  print("Thiago ($percentThiago%): ${valorThiago.toStringAsFixed(2)}");
  print("3% do montante de Thiago($percentMontanteThiago%): $montanteThiago");
}
