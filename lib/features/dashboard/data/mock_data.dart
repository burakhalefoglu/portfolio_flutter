import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/styles.dart';
import '../models/enums/transaction_type.dart';
import '../models/expense.dart';
import '../models/transaction.dart';

class MockData {
  static BarChartGroupData makeGroupData(
      int x, double y, Color barColor, double width) {
    return BarChartGroupData(
      barsSpace: 1,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: barColor,
          width: width,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ],
    );
  }

  static List<BarChartGroupData> getBarChartitems(Color color,
      {double width = 20}) {
    return [
      makeGroupData(0, 5, color, width),
      makeGroupData(1, 6, color, width),
      makeGroupData(2, 8, color, width),
      makeGroupData(3, 5, color, width),
      makeGroupData(4, 7, color, width),
      makeGroupData(5, 9, color, width),
      makeGroupData(6, 3, color, width),
    ];
  }

  static List<Transaction> get transactions {
    return [
      Transaction(
        "45673",
        "Spotify",
        DateTime.now(),
        569.50,
        TransactionType.outgoing,
        "assets/logo.png",
      ),
      Transaction(
        "76154",
        "Transfer",
        DateTime.now(),
        350.50,
        TransactionType.incoming,
        "assets/logo.png",
      ),
      Transaction(
        "322587",
        "Investments",
        DateTime.now(),
        3448.99,
        TransactionType.outgoing,
        "assets/logo.png",
      ),
    ];
  }

  static List<Expense> get otherExpanses {
    return [
      Expense(
        color: Styles.defaultBlueColor,
        expenseName: "Other expenses",
        expensePercentage: 50,
      ),
      Expense(
        color: Styles.defaultRedColor,
        expenseName: "Entertainment",
        expensePercentage: 35,
      ),
      Expense(
        color: Styles.defaultYellowColor,
        expenseName: "Investments",
        expensePercentage: 15,
      )
    ];
  }
}
