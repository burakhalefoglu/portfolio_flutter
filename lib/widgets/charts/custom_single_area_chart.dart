import 'package:flutter/material.dart';
import '../../../widgets/custom_cards.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'chart_models.dart';

import '../../core/styles/custom_colors.dart';
import 'chart_data_types.dart';

class CustomSingleAreaChart extends StatelessWidget {
  final List<ChartNumericDataModel> data;
  final String title;
  final String labelName;
  final CustomColors color;
  final ChartDataTypes dataTypes;

  CustomSingleAreaChart(
      {Key? key,
      required this.data,
      required this.title,
      required this.labelName,
      required this.color,
      required this.dataTypes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
        child: SfCartesianChart(
      legend: Legend(isVisible: true,
          opacity: 0.7,
          position: LegendPosition.right),
      title: ChartTitle(text: title),
      plotAreaBorderWidth: 0,
      primaryXAxis: NumericAxis(
        interval: 1,
        isVisible: true,
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
          numberFormat: dataTypes.getFormat,
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0)),
      series: <ChartSeries<ChartNumericDataModel, double>>[
        SplineAreaSeries<ChartNumericDataModel, double>(
          splineType: SplineType.cardinal,
          dataSource: data,
          color: color.getColor.withOpacity(.6),
          borderColor: color.getColor.withOpacity(1),
          borderWidth: 2,
          name: labelName,
          xValueMapper: (ChartNumericDataModel sales, _) => sales.label,
          yValueMapper: (ChartNumericDataModel sales, _) => sales.data,
        ),
      ],
          tooltipBehavior: TooltipBehavior(enable: true,),
    ));
  }
}
