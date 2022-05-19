import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/alex.jpg'), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontFamily: 'RubikWetPaint'),
                ),
                SizedBox(
                  height: 30,
                ),
                buildNum(),
                SizedBox(height: 20),
                buildPassword(),
                SizedBox(height: 10),
                buildForgetPassword(),
                buildRememberME(),
                buildLoginBtn(),
                buildSignUPBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNum() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone No.',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Comfortaa',
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 184, 182, 182),
                  ),
                  hintText: 'Phone No',
                  hintStyle: TextStyle(
                      color: Colors.black38,
                      fontFamily: 'IngridDarling',
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ))
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 20,
              color: Colors.white,
            )),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ]),
            height: 60,
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',
              style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 184, 183, 183),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black38,
                      fontFamily: 'IngridDarling',
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ))
      ],
    );
  }

  Widget buildForgetPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('forgotten password'),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forgot Password',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Comfortaa'),
        ),
      ),
    );
  }

  Widget buildRememberME() {
    return Container(
        height: 20,
        child: Row(
          children: [
            Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                    value: isRememberMe,
                    checkColor: Color.fromARGB(255, 160, 236, 166),
                    activeColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        isRememberMe = value!;
                      });
                    })),
            Text('Remember Me',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa')),
          ],
        ));
  }

  Widget buildLoginBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: 75,
        child: RaisedButton(
            elevation: 10,
            onPressed: () => print('login pressed'),
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Text('LOGIN',
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa'))));
  }

  Widget buildSignUPBtn() {
    return GestureDetector(
        onTap: () => print('Register'),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Don\'t have an account yet?  ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Comfortaa')),
            TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Comfortaa'))
          ]),
        ));
  }
}
