import 'package:fashion_app/constants.dart';
import 'package:flutter/material.dart';

class dept extends StatelessWidget {
  const dept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(children: [
        buildIntro(size: size),
        buildSections(
          press: () {},
          image: 'assets/images/hat.jpg',
          Title: 'hat',
        ),
      ]),
    );
  }
}

class buildCards extends StatelessWidget {
  const buildCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Row(
          children: [
            buildSections(
              press: () {},
              Title: 'ANKARA',
              image: 'assets/images/fek9ak2pczl.jpg',
            ),
            buildSections(
              press: () {},
              Title: 'HAT',
              image: 'assets/images/suit.jpg',
            ),
          ],
        ),
        Row(
          children: [
            buildSections(
              press: () {},
              Title: 'TROUSERS',
              image: 'assets/images/trou2.jpg',
            ),
            buildSections(
              press: () {},
              Title: 'SENATOR',
              image: 'assets/images/sen1.jpg',
            ),
          ],
        ),
        Row(
          children: [
            buildSections(
              press: () {},
              image: 'assets/images/shirt (1).jpg',
              Title: 'SHIRT',
            ),
            buildSections(
              press: () {},
              image: 'assets/images/chief.jpg',
              Title: 'CHIEFTENCY',
            ),
          ],
        ),
        Row(
          children: [
            buildSections(
              press: () {},
              image: 'assets/images/agbada.jpg',
              Title: 'AGBADA',
            ),
            buildSections(
              press: () {},
              image: 'assets/images/hat.jpg',
              Title: 'HAT',
            )
          ],
        )
      ],
    ));
  }
}

class buildSections extends StatelessWidget {
  const buildSections({
    Key? key,
    required this.press,
    required this.image,
    required this.Title,
  }) : super(key: key);

  final String image, Title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        // margin: EdgeInsets.only(
        //   left: xPadding,
        //   top: xPadding / 2,
        //   right: xPadding,
        // ),
        // width: size.width * 0.3,
        // height: size.height * 0.2,
        child: Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset(
            image,
            height: size.height / 3,
            fit: BoxFit.fill,
            // width: size.width,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Container(
              width: size.width / 3,
              padding: EdgeInsets.all(xPadding / 2),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 233, 17, 89),
                    blurRadius: 5,
                    offset: Offset(0, 2),
                    // spreadRadius: 2.0)
                  )
                ],
              ),
              child: Center(
                child: Text(Title,
                    style: TextStyle(
                      color: Color.fromARGB(255, 233, 17, 89),
                      fontWeight: FontWeight.bold,
                    )),
              )),
        ),
      ],
    ));
  }
}

class buildIntro extends StatelessWidget {
  const buildIntro({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        height: size.height * 0.2,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 233, 17, 89),
            boxShadow: [
              BoxShadow(
                  color: Colors.white12,
                  blurRadius: 5,
                  offset: Offset(1, 5),
                  spreadRadius: 5.0)
            ]),
        child: Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text:
                      ' We thread \n    all kinds of \n        Men Attires. \n \n Satisfying you is \n        our major existence ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Comfortaa',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
            Spacer(),
            Container(
                height: size.height * 0.15,
                width: 200,
                decoration: BoxDecoration(),
                child: Image(
                  image: AssetImage('assets/images/reg.jpg'),
                  fit: BoxFit.fill,
                ))
          ],
        ));
  }
}
