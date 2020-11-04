import 'package:TIQWA/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  onSignUp(BuildContext context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
  }

  onSignIn(BuildContext context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: 150,
                height: 150,
                child: Image(image: AssetImage('assets/icon.png'))),
            Container(
              child: Text(
                'TIQWA',
                style: TextStyle(
                    fontSize: 50, color: Colors.white70, fontFamily: 'Argh'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.rectangle,
                color: Colors.white54,
              ),
              padding: EdgeInsets.all(60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      onSignIn(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      onSignUp(context);
                    },
                    child: Container(
                      // padding: EdgeInsets.only(top: 5, bottom: 5),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
