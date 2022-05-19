import 'package:flutter/material.dart';
import 'package:tr_portfolio/widgets/charts/chart_data_types.dart';
import 'package:tr_portfolio/widgets/charts/column_color_strategy.dart';
import '../../../widgets/charts/custom_single_column_chart.dart';
import '../../../widgets/custom_cards.dart';

class HomeWidgets {
  CustomCardWidget buildComprasionCard() =>
      CustomCardWidget(child: const Text("Ayrıntılı Karşılaştırma Grafiği"));

  CustomCardWidget buildPortfolioAnalysisCard() =>
      CustomCardWidget(child: Text("Portföyüm Analizi"));

  CustomCardWidget buildInvesmentValueCard() =>
      CustomCardWidget(child: Text("Güncel Yatırım Değerleri"));

}