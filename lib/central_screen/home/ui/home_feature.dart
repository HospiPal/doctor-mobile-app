import 'package:doctorapp/central_screen/home/upcoming_appointments/upcoming_appointments.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("[Patient]'s Home"),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              //return LogEntryAdd();
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Container(
                  child: UpcomingAppointments(),
                  padding: EdgeInsets.all(2),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ),
    );
  }
}
