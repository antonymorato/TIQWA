import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              child:

                  // Text('Username',),
                  Form(
                      child: Wrap(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'What do people call you?',
                      labelText: 'Username',
                    ),
                  ),
                  // Text('Email'),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'What do people call you?',
                      labelText: 'Email',
                    ),
                    validator: (String s) {
                      // RegExp regExp = RegExp('\.\+@\.\+.\.\+');
                      // regExp.
                    },
                  ),
                  // Text('Password',),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'What do people call you?',
                      labelText: 'Password',
                    ),
                    validator: (String s) {},
                  ),
                ],
              )))),
    );
  }
}
