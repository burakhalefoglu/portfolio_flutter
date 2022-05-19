import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tr_portfolio/core/extensions/extensions.dart';

import '../core/styles/custom_colors.dart';

class CustomAppbar {
  var starFeedbackTooltip = "Geri bildirim gönder";
  var searchTooltip = "birşeyler ara";
  var messageFeedbackTooltip = "geri bildirim gönder";
  var ratingBarMessage = "Ürünümüzü nasıl buldunuz?";
  var popUpMenuMessage = "Diğer";

  AppBar buildAppBar(String title, BuildContext context) => AppBar(
        title: Text(
          title,
          style: context.theme.textTheme.headline5,
        ),
        actions: [
          buildIconSearch(context),
          buildIconRatingBar(context),
          buildIconMessageFeedback(context),
          buildPopupMenu()
        ],
      );

  PopupMenuButton<Text> buildPopupMenu() {
    return PopupMenuButton<Text>(
      tooltip: popUpMenuMessage,
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: buildProfile(context)),
          PopupMenuItem(child: buildLogout(context)),
        ];
      },
    );
  }

  ListTile buildLogout(BuildContext context) {
    return ListTile(
        leading: ExcludeSemantics(
          child: CircleAvatar(
            child: Icon(Icons.logout, size: context.mediumValue),
          ),
        ),
        title: const Text("Çıkış yap"));
  }

  ListTile buildProfile(BuildContext context) {
    return ListTile(
        leading: ExcludeSemantics(
          child: CircleAvatar(
            child: Icon(Icons.person, size: context.mediumValue),
          ),
        ),
        title: const Text("Profil"));
  }

  Tooltip buildIconRatingBar(BuildContext context) {
    return Tooltip(
      message: ratingBarMessage,
      child: RatingBar.builder(
        itemSize: context.mediumValue,
        itemPadding: context.lowVerticalPadding,
        initialRating: 5,
        itemCount: 5,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Icon(
                Icons.sentiment_very_dissatisfied,
                color: CustomColors.alizarinCrimson.getColor,
              );
            case 1:
              return Icon(
                Icons.sentiment_dissatisfied,
                color: CustomColors.fireBush.getColor,
              );
            case 2:
              return Icon(
                Icons.sentiment_neutral,
                color: CustomColors.goldenDream.getColor,
              );
            case 3:
              return Icon(
                Icons.sentiment_satisfied,
                color: CustomColors.pear.getColor,
              );
            case 4:
              return Icon(
                Icons.sentiment_very_satisfied,
                color: CustomColors.inchWorm.getColor,
              );
            default:
              return Icon(
                Icons.sentiment_very_satisfied,
                color: CustomColors.oliveDrab.getColor,
              );
          }
        },
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    );
  }

  IconButton buildIconSearch(BuildContext context) {
    return IconButton(
      tooltip: searchTooltip,
      icon: Icon(Icons.search, size: context.mediumValue),
      onPressed: () {},
    );
  }

  IconButton buildIconMessageFeedback(BuildContext context) {
    return IconButton(
      tooltip: messageFeedbackTooltip,
      icon: Icon(Icons.feedback, size: context.mediumValue),
      onPressed: () {},
    );
  }
}
