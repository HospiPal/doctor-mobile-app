import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingAppointmentsCard extends StatefulWidget {
  @override
  _UpcomingAppointmentsCardState createState() =>
      _UpcomingAppointmentsCardState();

  final String appointmentType;
  final String date;

  UpcomingAppointmentsCard(this.appointmentType, this.date);
}

class _UpcomingAppointmentsCardState extends State<UpcomingAppointmentsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.schedule,
                color: Theme.of(context).accentColor,
              ),
              Text(widget.appointmentType),
              Text(widget.date),
            ],
          ),
          margin: new EdgeInsets.symmetric(vertical: 10.0),
          width: 350,
        ),
        onTap: () {
          //_showModalBottomSheet(context);
        },
      ),
    );
  }
}
