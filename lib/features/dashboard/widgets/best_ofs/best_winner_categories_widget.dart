import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/styles.dart';

class BestWinnerCategoriesWidget extends StatelessWidget {
  final String categoryName;

  const BestWinnerCategoriesWidget({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        focusColor: Styles.defaultLightGreyColor,
        hoverColor: Styles.defaultLightGreyColor,
        borderRadius: Styles.defaultBorderRadius,
        child: Container(
          child: Text(categoryName,
              style: TextStyle(fontSize: 16, color: Styles.defaultBlackColor)),
          height: 24,
          width: 140,
          alignment: Alignment.center,
          margin: EdgeInsets.all(Styles.defaultMargin),
          decoration: BoxDecoration(
            border: Border.all(color: Styles.defaultGreyColor, width: .3),
            color: Styles.defaultLightWhiteColor,
            borderRadius: Styles.defaultBorderRadius,
            boxShadow: [
              BoxShadow(
                color: Styles.defaultLightGreyColor.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
