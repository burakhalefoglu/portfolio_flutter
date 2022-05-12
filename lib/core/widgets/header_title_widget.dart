
import 'package:flutter/material.dart';

Widget getHeaderTitle(String avatarPath, String title, String subtitle) {
  return Column(
    children: <Widget>[
      CircleAvatar(
        radius: 40.0,
        backgroundImage: AssetImage(avatarPath),
        backgroundColor: Colors.transparent,
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
      const SizedBox(
        height: 8,
      ),
      Text(
          subtitle,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
          )),
      const SizedBox(
        height: 8,
      ),
    ],
  );
}