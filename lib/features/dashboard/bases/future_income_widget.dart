import 'package:flutter/material.dart';
import 'package:tr_portfolio/widgets/charts/chart_data_types.dart';
import '../../../widgets/chart_custom_card.dart';
import '../../../widgets/charts/chart_models.dart';
import '../../../core/styles/custom_colors.dart';
import '../../../widgets/charts/custom_double_area_chart.dart';

class FutureIncomeWidget extends StatelessWidget {
  const FutureIncomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartCustomCardWidget(
      infoText: "Bu bir gelecekteki değer grafiğidir.",
      title: 'Gelecekteki Değer',
      child: CustomDoubleAreaChart(
        data1Color: CustomColors.primary,
        data2Color: CustomColors.secondary,
        dataTypes: ChartDataTypes.money,
        data1Label: "Brüt",
        data2Label: "Net",
        title: 'Gelecekteki Değeri',
        xTitle: 'Yıl',
        yTitle: 'Birikim',
        data1: [
          ChartNumericDataModel(1, 10000),
          ChartNumericDataModel(3, 30000),
          ChartNumericDataModel(5, 50000),
          ChartNumericDataModel(10, 150000),
          ChartNumericDataModel(20, 570000),
          ChartNumericDataModel(30, 1650000)
        ],
        data2: [
          ChartNumericDataModel(1, 5000),
          ChartNumericDataModel(3, 18000),
          ChartNumericDataModel(5, 33000),
          ChartNumericDataModel(10, 75000),
          ChartNumericDataModel(20, 440000),
          ChartNumericDataModel(30, 675000)
        ],
      ),
    );
  }
}
