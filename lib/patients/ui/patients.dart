import 'package:flutter/material.dart';

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
            return MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              shape: CircleBorder(),
              onPressed: () {},
              color: Theme.of(context).primaryColor,
            );
          },
        ),
      ),
    );
  }
}
