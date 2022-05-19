import 'package:flutter/material.dart';

class registrationScr extends StatefulWidget {
  const registrationScr({Key? key}) : super(key: key);

  @override
  State<registrationScr> createState() => _registrationScrState();
}

class _registrationScrState extends State<registrationScr> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 2,
        centerTitle: true,
        leading: BackButton(),
        title: Text(
          'Janis Attires',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
              fontFamily: 'RubikWetPaint'),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/sign.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop))),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
          child: GestureDetector(
            child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Get Registered \n',
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Comfortaa',
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: '                  Here',
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: 'Comfortaa',
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildName(),
                    SizedBox(
                      height: 10,
                    ),
                    buildPhone(),
                    SizedBox(
                      height: 10,
                    ),
                    buildEmail(),
                    SizedBox(
                      height: 10,
                    ),
                    buildAddress(),
                    SizedBox(
                      height: 10,
                    ),
                    buildPassword(),
                    SizedBox(
                      height: 10,
                    ),
                    buildForgetPass(),
                    SizedBox(
                      height: 10,
                    ),
                    buildBtn(),
                    buildloginBtn(),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget buildName() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          labelText: 'Name',
          prefixIcon: Icon(Icons.person),
          labelStyle: TextStyle(
              color: Colors.black38,
              fontFamily: 'IngridDarling',
              fontSize: 22,
              fontWeight: FontWeight.bold)),
      validator: (value) {
        if (value!.isEmpty || RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
          return 'Enter Correct Name';
        } else {
          return null;
        }
      },
    );
  }

  Widget buildPhone() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Number',
            prefixIcon: Icon(Icons.phone),
            labelStyle: TextStyle(
                color: Colors.black38,
                fontFamily: 'IngridDarling',
                fontSize: 22,
                fontWeight: FontWeight.bold)));
  }

  Widget buildEmail() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email),
            labelStyle: TextStyle(
                color: Colors.black38,
                fontFamily: 'IngridDarling',
                fontSize: 22,
                fontWeight: FontWeight.bold)));
  }

  Widget buildAddress() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Address',
            prefixIcon: Icon(Icons.house),
            labelStyle: TextStyle(
                color: Colors.black38,
                fontFamily: 'IngridDarling',
                fontSize: 22,
                fontWeight: FontWeight.bold)));
  }

  Widget buildPassword() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
            labelStyle: TextStyle(
                color: Colors.black38,
                fontFamily: 'IngridDarling',
                fontSize: 22,
                fontWeight: FontWeight.bold)));
  }

  Widget buildForgetPass() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Confirm Password',
            prefixIcon: Icon(Icons.lock),
            labelStyle: TextStyle(
                color: Colors.black38,
                fontFamily: 'IngridDarling',
                fontSize: 22,
                fontWeight: FontWeight.bold)));
  }

  Widget buildBtn() {
    return Center(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          width: 90,
          child: RaisedButton(
              elevation: 10,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print('life');
                }
              },
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Text('SUMMIT',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Comfortaa')))),
    );
    ;
  }

  Widget buildloginBtn() {
    return GestureDetector(
        onTap: () => print('Register'),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: '                       Already have an Account?  ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Comfortaa')),
            TextSpan(
                text: 'Log In',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Comfortaa'))
          ]),
        ));
  }
}
