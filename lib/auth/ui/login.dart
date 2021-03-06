import 'package:doctorapp/auth/ui/auth.dart';
import 'package:flutter/material.dart';

import '../../navigation.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20, color: Theme.of(context).primaryColor),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: Theme.of(context).primaryColor)),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Theme.of(context).primaryColor)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: AuthButton(
                        title: 'Login',
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.patients);
                        },
                      )),
                ])));
  }
}
