import 'package:doctorapp/central_screen/home/new_journal_entries/new_journal_entries.dart';
import 'package:doctorapp/central_screen/home/recent_labs/recent_labs.dart';
import 'package:doctorapp/central_screen/home/upcoming_appointments/upcoming_appointments.dart';
import 'package:flutter/material.dart';

import '../../../navigation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> notifications = <Widget>[
    UpcomingAppointments(),
    RecentLabs(),
    NewJournalEntries(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("[Patient]'s Home"), actions: <Widget>[
        FlatButton(
          textColor: Colors.white,
          child: Text('Logout'),
          onPressed: () {},
        )
      ]),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 10, // 60% of space => (6/(6 + 4))
                child: Container(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: notifications.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 4.0),
                        child: Container(
                          child: notifications[index],
                          padding: EdgeInsets.all(2),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1, // 40% of space
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Theme.of(context).primaryColor,
                  ),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.account_box),
                      ),
                      IconButton(
                        icon: Icon(Icons.message),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, Routes.messageWithPatient);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.phone),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
