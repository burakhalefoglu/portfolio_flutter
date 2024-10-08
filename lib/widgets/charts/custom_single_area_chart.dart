import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../chart_custom_card.dart';
import 'chart_models.dart';

import '../../core/styles/custom_colors.dart';
import 'chart_data_types.dart';

class CustomSingleAreaChart extends StatelessWidget {
  final List<ChartNumericDataModel> data;
  final String title;
  final String yTitle;
  final String xTitle;
  final String labelName;
  final CustomColors color;
  final ChartDataTypes dataTypes;

  const CustomSingleAreaChart(
      {Key? key,
      required this.data,
      required this.title,
      required this.labelName,
      required this.color,
      required this.dataTypes,
      required this.yTitle,
      required this.xTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
          margin: context.highMargin,
          legend: Legend(
              isVisible: true, opacity: 0.7, position: LegendPosition.bottom),
          plotAreaBorderWidth: 0,
          enableAxisAnimation: true,
          primaryXAxis: NumericAxis(
            interval: 1,
            isVisible: true,
            majorGridLines: const MajorGridLines(width: 0),
            majorTickLines: const MajorTickLines(size: 0),
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            title: AxisTitle(text: xTitle),
          ),
          primaryYAxis: NumericAxis(
            numberFormat: dataTypes.getFormat,
            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(size: 0),
            title: AxisTitle(text: yTitle),
            edgeLabelPlacement: EdgeLabelPlacement.shift,
          ),
          series: <ChartSeries<ChartNumericDataModel, double>>[
            SplineAreaSeries<ChartNumericDataModel, double>(
              markerSettings: const MarkerSettings(isVisible: true),
              splineType: SplineType.natural,
              dataSource: data,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color.getColor.withOpacity(.5),
                    color.getColor.withOpacity(.0)
                  ]),
              borderColor: color.getColor.withOpacity(1),
              borderWidth: 3,
              name: labelName,
              xValueMapper: (ChartNumericDataModel sales, _) => sales.label,
              yValueMapper: (ChartNumericDataModel sales, _) => sales.data,
            ),
          ],
          tooltipBehavior: TooltipBehavior(
            enable: true,
          ),
        );
  }
}
