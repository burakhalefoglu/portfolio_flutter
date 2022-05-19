
import 'package:flutter/material.dart';
import 'package:tr_portfolio/widgets/charts/chart_data_types.dart';
import '../../../widgets/charts/chart_models.dart';
import '../../../core/styles/custom_colors.dart';
import '../../../widgets/charts/custom_single_area_chart.dart';

class FutureIncomeWidget extends StatelessWidget{
  const FutureIncomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSingleAreaChart(
      dataTypes: ChartDataTypes.money,
      color: CustomColors.goldenDream,
      labelName: "Yıl",
      title: 'Gelecekteki Değeri',
      data: [
        ChartNumericDataModel(1, 10000),
        ChartNumericDataModel(3, 30000),
        ChartNumericDataModel(5, 50000),
        ChartNumericDataModel(10, 150000),
        ChartNumericDataModel(20, 570000),
        ChartNumericDataModel(30, 1650000)
      ],
    );
  }


}