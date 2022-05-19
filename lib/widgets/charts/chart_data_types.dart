import 'package:intl/intl.dart';

enum ChartDataTypes {
  double,
  money,
  percent,
}


extension SelectedColorExtension on ChartDataTypes {
  NumberFormat get getFormat {
    switch (this) {
      case ChartDataTypes.money:
        return NumberFormat.currency(locale: 'eu',
        name: "TR",
        symbol: "₺");
        case ChartDataTypes.double:
          return NumberFormat.decimalPattern();
        case ChartDataTypes.percent:
        return NumberFormat.decimalPercentPattern(locale: 'eu',
            decimalDigits: 1);
      default:
        return NumberFormat.decimalPattern();
    }
  }
}


