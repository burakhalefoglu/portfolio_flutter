
import 'package:flutter/material.dart';

Widget getHeaderTitle(Container icon, String title, String subtitle) {
  return Column(
    children: <Widget>[
      const SizedBox(
        height: 10,
      ),
      icon,
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