import 'package:flutter/cupertino.dart';

import '../../../core/styles/custom_colors.dart';
import '../../../widgets/chart_custom_card.dart';
import '../../../widgets/charts/chart_data_types.dart';
import '../../../widgets/charts/chart_models.dart';
import '../../../widgets/charts/column_color_strategy.dart';
import '../../../widgets/charts/custom_single_column_chart.dart';

class PerformanceWidget extends StatelessWidget {
  const PerformanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartCustomCardWidget(
      infoText: "Bu bir performans grafiğidir.",
      title: 'Performans Grafiği',
      child: CustomSingleColumnChart(
        xTitle: "Yatırım Araçları",
        yTitle: "Kazanç/Kayıp",
        dataTypes: ChartDataTypes.percent,
        defaultColor: CustomColors.primary,
        columnColorStrategy: ColumnColorStrategy.negativeSensitive,
        labelName: "% değer",
        data: [
          ChartCategoricalDataModel("Portföy Toplamı", 0.36),
          ChartCategoricalDataModel("Altın/Ons", 0.84),
          ChartCategoricalDataModel("Gümüş", -0.12),
          ChartCategoricalDataModel("Platin", -0.22),
          ChartCategoricalDataModel("Brent Petrol", 0.362),
          ChartCategoricalDataModel("USD", 0.322),
          ChartCategoricalDataModel("EUR", 0.162),
          ChartCategoricalDataModel("Sterlin", -0.52),
          ChartCategoricalDataModel("Bist100", 0.652),
          ChartCategoricalDataModel("Bist30", 0.852),
          ChartCategoricalDataModel("BTC", -0.602),
          ChartCategoricalDataModel("ETH", -0.402),
        ],
      ),
    );
  }
}
