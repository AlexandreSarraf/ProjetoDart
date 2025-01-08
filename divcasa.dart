import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  double? total;
  // Solicita o valor total ao usuário
  while (total == null || total.isNegative) {
    print("Informe o valor total:");
    String? inputTotal = stdin.readLineSync();
    total = double.tryParse(inputTotal ?? "");

    if (total == null || total <= 0) {
      print("Valor inválido! Certifique-se de informar um número positivo.\n");
    }
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

  // Criar o formatador para separadores de milhares e duas casas decimais
  final formatter = NumberFormat('#,##0.00', 'pt_BR');

  // Exibição dos resultados
  print("TOTAL DA VENDA: ${formatter.format(total)}");
  percentLiber *= 100;
  print("CORRETOR ($percentLiber%): ${formatter.format(valorLiber)}");
  percentAmor *= 100;
  print("PAI ($percentAmor%): ${formatter.format(valorAmor)}");
  percentTarcisio *= 100;
  print(
      "TARCÍSIO (${percentTarcisio.toStringAsFixed(2)}%): ${formatter.format(valorTarcisio)}");
  percentThiago *= 100;
  print(
      "THIAGO (${percentThiago.toStringAsFixed(2)}%): ${formatter.format(valorThiago)}");
  percentMontanteThiago *= 100;
  print(
      "Projeção pra ganho em Bolsa de Valores ($percentMontanteThiago%): ${formatter.format(montanteThiago)}");
  print(
      "${formatter.format(montanteThiago)} corresponde a 3% de 80% do montante de Thiago.");

  double verificar = valorThiago + valorTarcisio + valorAmor + valorLiber;
  print("Soma total novamente: ${formatter.format(verificar)}");
}
