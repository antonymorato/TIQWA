import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return logPage(context);
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage('assets/icon.png'),
              width: 80,
              height: 80,
            ),
            Text(
              'TIQWA',
              style: TextStyle(color: Colors.orange, fontSize: 45),
            ),
            Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Username'),
                  TextFormField(),
                  Text('Password'),
                  TextFormField()
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget logPage(BuildContext context) {
    return FlutterLogin(
      title: 'TIQWA',
      logo: 'assets/icon.png',
      onLogin: (_) => Future(null),
      onSignup: (_) => Future(null),
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => null,
        ));
      },
      onRecoverPassword: (_) => Future(null),
    );
  }
}
