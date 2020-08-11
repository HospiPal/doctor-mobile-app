import 'package:doctorapp/central_screen/home/upcoming_appointments/upcoming_appointments_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingAppointments extends StatefulWidget {
  @override
  _UpcomingAppointmentsState createState() => _UpcomingAppointmentsState();
}

class _UpcomingAppointmentsState extends State<UpcomingAppointments> {
  final List<UpcomingAppointmentsCard> appointments =
      <UpcomingAppointmentsCard>[
    UpcomingAppointmentsCard("Consultation", "8/11/20"),
    UpcomingAppointmentsCard("Procedure", "8/22/20"),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      //child: entries[index]
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Upcoming Appointments:"),
          getAppointmentCards()
        ],
      ),
      //color: Colors.amberAccent
    );
  }

  Widget getAppointmentCards() {
    if (appointments.length > 0) {
      return new Column(children: appointments);
    } else {
      return Container(
        child: Text("No Upcoming Appointments"),
        margin: new EdgeInsets.symmetric(vertical: 10.0),
      );
    }
  }
}
