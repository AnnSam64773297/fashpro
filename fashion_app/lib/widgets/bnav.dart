import 'package:fashion_app/pages/about.dart';
import 'package:fashion_app/pages/homePage.dart';
import 'package:flutter/material.dart';

import '../pages/chat.dart';

class Bnav extends StatelessWidget {
  const Bnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pages = [
      homePage(),
      chat(),
      about(),
    ];
    return BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 233, 17, 89),
        elevation: 3,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.details), label: 'About'),
        ]);
  }
}
