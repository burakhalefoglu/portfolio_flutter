import 'package:flutter/cupertino.dart';

import 'best_ofs/best_winner_categories_widget.dart';
import 'best_ofs/best_winner_widget.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(),
        child: Column(
          children: [
            const SizedBox(width: 12),
            Container(
              child: Text("En 5 Listesi",
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BestWinnerCategoriesWidget(categoryName: "Bist"),
                BestWinnerCategoriesWidget(categoryName: "Yatırım Fonları"),
                BestWinnerCategoriesWidget(categoryName: "ABD Endex"),
                BestWinnerCategoriesWidget(categoryName: "Avrupa Endex"),
                BestWinnerCategoriesWidget(categoryName: "Asya Endex"),
                BestWinnerCategoriesWidget(categoryName: "Kurlar"),
                BestWinnerCategoriesWidget(categoryName: "Emtialar"),
                BestWinnerCategoriesWidget(categoryName: "Kripto paralar"),
              ],
            ),
            Row(
              children: const [
                BestWinnerWidget(
                    title: "Anadolu Efes ",
                    isUp: true,
                    percent: 12,
                    subTitle: "AEFES",
                    value: 29.90
                ),
                BestWinnerWidget(
                    title: "Akbank T.A.Ş.",
                    isUp: false,
                    percent: 10,
                    subTitle: "AKBNK",
                    value: 8.30
                ),
                BestWinnerWidget(
                    title: "Aselsan",
                    isUp: true,
                    percent: 12,
                    subTitle: "ASELS",
                    value: 29.90
                ),
                BestWinnerWidget(
                    title: "Alarko",
                    isUp: false,
                    percent: 12,
                    subTitle: "ALARK",
                    value: 27.90
                ),
                BestWinnerWidget(
                    title: "Anadolu Efes",
                    isUp: true,
                    percent: 12,
                    subTitle: "AEFES",
                    value: 29.90
                ),
              ],
            ),
          ],
        ));
  }
}