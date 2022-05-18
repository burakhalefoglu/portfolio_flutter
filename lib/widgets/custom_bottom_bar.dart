
import 'package:flutter/material.dart';

class CustomBottomBar{

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) => BottomNavigationBar(items: [
    BottomNavigationBarItem(
      icon: const Icon(Icons.add_comment),
      label: "test1",
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.calendar_today),
      label: "test1",
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.account_circle),
      label: "test1",
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.alarm_on),
      label: "test1",
    ),
  ],);

}