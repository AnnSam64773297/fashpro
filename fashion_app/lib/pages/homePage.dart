import 'package:fashion_app/pages/detailScreen.dart';
import 'package:fashion_app/pages/registration.dart';
import 'package:fashion_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/bnav.dart';
import '../widgets/dept.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      // extendBodyBehindAppBar: true,
      appBar: buildAppbar(),
      drawer: drawerWidget(),
      body: dept(),
      bottomNavigationBar: Bnav(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      title: Text(
        'Janis Attires',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
            fontFamily: 'RubikWetPaint'),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Color.fromARGB(255, 233, 17, 89)),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.person,
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
