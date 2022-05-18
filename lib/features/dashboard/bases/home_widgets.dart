import 'package:flutter/material.dart';
import '../../../widgets/custom_cards.dart';

class HomeWidgets{

  CustomCardWidget buildComprasionCard() => CustomCardWidget(child: const Text("Ayrıntılı Karşılaştırma Grafiği"));

  CustomCardWidget buildPortfolioAnalysisCard() => CustomCardWidget(child: Text("Portföyüm Analizi"));

  CustomCardWidget buildInvesmentValueCard() => CustomCardWidget(child: Text("Güncel Yatırım Değerleri"));

  CustomCardWidget buildFutureValueCard() => CustomCardWidget(child: Text("Gelecekteki Değer"));

  CustomCardWidget buildPerformanceCard() => CustomCardWidget(child: Text("Performans Grafiği"));

  CustomCardWidget buildMountlyAvarageCard() => CustomCardWidget(child: Text("Aylık Ortalama Hesaplama"));

  CustomCardWidget buildTotalSellIncomeCard() => CustomCardWidget( child: Text("Toplam Satışlar"));

  CustomCardWidget buildScoreCard() => CustomCardWidget(child: Text("Skor"));

}