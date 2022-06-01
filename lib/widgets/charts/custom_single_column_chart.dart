import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'chart_models.dart';

import '../../core/styles/custom_colors.dart';
import 'chart_data_types.dart';
import 'column_color_strategy.dart';

class CustomSingleColumnChart extends StatelessWidget{
  final String xTitle;
  final String yTitle;
  final List<ChartCategoricalDataModel> data;
  final String labelName;
  final CustomColors defaultColor;
  final ChartDataTypes dataTypes;
  final ColumnColorStrategy columnColorStrategy;

  const CustomSingleColumnChart({Key? key,
    required this.data,
    required this.xTitle,
    required this.yTitle,
    required this.labelName,
    required this.dataTypes,
    required this.columnColorStrategy,
    required this.defaultColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        legend: Legend(isVisible: true, opacity: 0.7,
            position: LegendPosition.bottom),
        plotAreaBorderWidth: 0,
        margin: context.highMargin,
        primaryXAxis: CategoryAxis(
            title: AxisTitle(text: xTitle),
            majorGridLines: const MajorGridLines(width: 0),
            labelIntersectAction: AxisLabelIntersectAction.wrap,
            placeLabelsNearAxisLine: false),
        primaryYAxis: NumericAxis(
            title: AxisTitle(text: yTitle),
            numberFormat: dataTypes.getFormat,
            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(size: 0)),
        series: _getSeries(context),
        tooltipBehavior:  TooltipBehavior(enable: true, header: '', canShowMarker: false),
    );
  }

  List<ChartSeries<ChartCategoricalDataModel, String>> _getSeries(BuildContext context) {
    return <ChartSeries<ChartCategoricalDataModel, String>>[
      ColumnSeries<ChartCategoricalDataModel, String>(
          borderWidth: 2,
          name: labelName,
          dataSource: data,
          width: .4,
        borderRadius: context.lowestBorderRadius,
          xValueMapper: (ChartCategoricalDataModel sales, _) => sales.label as String,
          yValueMapper: (ChartCategoricalDataModel sales, _) => sales.data,
          pointColorMapper: (ChartCategoricalDataModel sales, _) => columnColorStrategy
              .getColor(defaultColor.getColor, sales.data)!.withOpacity(.7),
          dataLabelSettings: const DataLabelSettings(
              isVisible: true, labelAlignment: ChartDataLabelAlignment.auto),
      ),
    ];
  }
}
