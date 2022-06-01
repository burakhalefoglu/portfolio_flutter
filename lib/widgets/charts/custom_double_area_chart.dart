import 'package:flutter/material.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../core/styles/custom_colors.dart';
import 'chart_models.dart';
import 'chart_data_types.dart';

class CustomDoubleAreaChart extends StatelessWidget {
  final List<ChartNumericDataModel> data1;
  final List<ChartNumericDataModel> data2;
  final String title;
  final String yTitle;
  final String xTitle;
  final String data1Label;
  final String data2Label;
  final CustomColors data1Color;
  final CustomColors data2Color;
  final ChartDataTypes dataTypes;

  const CustomDoubleAreaChart(
      {Key? key,
      required this.title,
      required this.dataTypes,
      required this.yTitle,
      required this.xTitle,
      required this.data1,
      required this.data2,
      required this.data1Label,
      required this.data2Label,
      required this.data1Color,
      required this.data2Color})
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
              dataSource: data1,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                colors: [
                  data1Color.getColor.withOpacity(.5),
                  data1Color.getColor.withOpacity(.0)
                ]
              ),
              borderColor: data1Color.getColor.withOpacity(1),
              borderWidth: 3,
              name: data1Label,
              xValueMapper: (ChartNumericDataModel sales, _) => sales.label,
              yValueMapper: (ChartNumericDataModel sales, _) => sales.data,
            ),

            SplineAreaSeries<ChartNumericDataModel, double>(
              markerSettings: const MarkerSettings(isVisible: true),
              splineType: SplineType.natural,
              dataSource: data2,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors: [
                    data2Color.getColor.withOpacity(.5),
                    data2Color.getColor.withOpacity(.0)
                  ]
              ),
              borderColor: data2Color.getColor.withOpacity(1),
              borderWidth: 3,
              name: data2Label,
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
