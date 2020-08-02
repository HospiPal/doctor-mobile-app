import 'package:flutter/material.dart';

import '../../navigation.dart';

class Patients extends StatefulWidget {
  @override
  _PatientsState createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[]),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(50),
          itemCount: 15,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                shape: CircleBorder(),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.centralScreen);
                },
                color: Theme.of(context).primaryColor,
              ),
            );
          },
        ),
      ),
    );
  }
}
