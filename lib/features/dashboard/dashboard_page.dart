import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tr_portfolio/features/dashboard/widgets/best_ofs/best_winner_categories_widget.dart';
import 'package:tr_portfolio/features/dashboard/widgets/best_ofs/best_winner_widget.dart';
import '../../core/styles/styles.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Styles.defaultBlackColor,
        theme: ThemeData(backgroundColor: Styles.defaultLightGreyColor),
        home: const DashboardHomePage(),
      );
    });
  }
}

class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({Key? key}) : super(key: key);

  @override
  State<DashboardHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<DashboardHomePage> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      appBar: AppBar(
        // Topbar
        backgroundColor: Styles.defaultLightWhiteColor,
        shadowColor: Styles.defaultGreyColor,
        elevation: 0.2,
        toolbarHeight: 65,
        leading: Icon(Icons.bar_chart, color: Styles.defaultBlackColor),
        title: Text('Portfolio',
            style: TextStyle(color: Styles.defaultBlackColor)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: SizedBox(
                width: 140, // <-- Your width
                height: 60, // <-- Your height
                child: SizedBox.expand(
                    child: ElevatedButton(
                        child: const Text('Giriş yap'),
                        onPressed: () {
                          Modular.to.navigate('/login');
                        }))),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(
              top: Styles.defaultPadding,
              bottom: Styles.defaultPadding,
              right: Styles.defaultRightPadding,
              left: Styles.defaultLeftPadding,
            ),
            child: Wrap(
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
            )),
      ),
    );
  }
}