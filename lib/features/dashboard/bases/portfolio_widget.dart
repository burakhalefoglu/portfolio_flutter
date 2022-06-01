import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';
import 'package:tr_portfolio/widgets/custom_cards.dart';
import 'package:tr_portfolio/widgets/custom_info_tooltip.dart';
import '../../../core/styles/custom_colors.dart';
import '../../../widgets/charts/chart_data_types.dart';
import '../../../widgets/charts/chart_models.dart';
import '../../../widgets/charts/column_color_strategy.dart';
import '../../../widgets/charts/custom_single_column_chart.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      child: Row(
        children: [
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 15,
            child: ListView(
              children: [
                context.emptyWidgetHeight,
                context.emptyWidgetHeight,
                SizedBox(
                    child: ListTile(
                      title: Text("Portföyüm",
                          style: context.theme.textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      subtitle: Text('Toplam güncel göstergeler'),
                    )),
                context.emptyWidgetHeight,
                SizedBox(
                    child: ListTile(
                  title: Text("200.000₺",
                      style: context.theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  subtitle: Text('Güncel Yatırılan Tutar'),
                )),
                context.emptyWidgetHeight,
                SizedBox(
                    child: ListTile(
                  title: Text("350.600₺",
                      style: context.theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  subtitle: Text('Toplam Değeri'),
                )),
                context.emptyWidgetHeight,
                SizedBox(
                    child: ListTile(
                  trailing: Icon(Icons.trending_up,
                      color: CustomColors.success.getColor),
                  title: Text("+ 70%",
                      style: context.theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: CustomColors.success.getColor)),
                  subtitle: Text('Kazanç/Kayıp (%)'),
                )),
                context.emptyWidgetHeight,
                SizedBox(
                    child: ListTile(
                  trailing: Icon(Icons.trending_down,
                      color: CustomColors.danger.getColor),
                  title: Text("- 12%",
                      style: context.theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: CustomColors.danger.getColor)),
                  subtitle: Text('Alım Gücündeki Değişim (%)'),
                )),
                context.emptyWidgetHeight,
                context.emptyWidgetHeight,
                SizedBox(
                    child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Yeni Portföy Yarat"),
                )),
                context.emptyWidgetHeight,
              ],
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          Expanded(
              child: VerticalDivider(
            color: CustomColors.gray.getColor.withOpacity(.3),
          )),
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 40,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                                TextButton(
                                    onPressed: () => {},
                                    child: Text("Portfolio1")),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(flex: 40),
                        buildInfo(context, "infoText"),
                        const Spacer(flex: 5),
                      ],
                    )),
                Expanded(
                  flex: 20,
                  child: CustomSingleColumnChart(
                    xTitle: "Yatırım Araçları",
                    yTitle: "Yüzde Dağılımı",
                    dataTypes: ChartDataTypes.percent,
                    defaultColor: CustomColors.secondary,
                    columnColorStrategy: ColumnColorStrategy.defaults,
                    labelName: "% dağılım",
                    data: [
                      ChartCategoricalDataModel("Yerli Hisse senetleri", 0.36),
                      ChartCategoricalDataModel(
                          "Yabancı Hisse senetleri", 0.12),
                      ChartCategoricalDataModel("Emtialar", 0.84),
                      ChartCategoricalDataModel("Yatırım fonları", 0.12),
                      ChartCategoricalDataModel("Emeklilik fonları", 0.12),
                      ChartCategoricalDataModel("Kripto paralar", 0.22),
                      ChartCategoricalDataModel("Döviz", 0.322),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Divider(
                      color: CustomColors.gray.getColor.withOpacity(.3),
                    )),
                Expanded(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Spacer(),
                      Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text("200.000₺"),
                            subtitle: Text("Toplam yatırılan"),
                            leading:  CircleAvatar(
                              backgroundColor: CustomColors.danger.getColor,
                              radius: 30,
                              child: Icon(FontAwesome5.hand_holding_usd, color: CustomColors.white.getColor),
                            ),
                          ),
                      ),
                      Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text("230.000₺"),
                            subtitle: Text("Güncel Değeri"),
                            leading:  CircleAvatar(
                              backgroundColor: CustomColors.secondary.getColor,
                              radius: 30,
                              child: Icon(FontAwesome5.star, color: CustomColors.white.getColor),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text("30.000₺"),
                            subtitle: Text("Toplam Satışlar"),
                            leading:  CircleAvatar(
                              backgroundColor: CustomColors.primary.getColor,
                              radius: 30,
                              child: Icon(FontAwesome5.exchange_alt, color: CustomColors.white.getColor),
                            ),
                          ),
                      ),
                      Expanded(
                          flex: 3,
                          child: ListTile(
                            title: Text("+ 30%"),
                            subtitle: Text("Alım Gücündeki Değişim(%)"),
                            leading:  CircleAvatar(
                              backgroundColor: CustomColors.success.getColor,
                              radius: 30,
                              child: Icon(Icons.trending_up, color: CustomColors.white.getColor),
                            ),
                          ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const Spacer(flex: 2,),
                Expanded( flex: 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Portföye Ekleme Yap"),
                    )),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Divider buildDivider() {
  return Divider(
    color: CustomColors.gray.getColor.withOpacity(.3),
  );
}
