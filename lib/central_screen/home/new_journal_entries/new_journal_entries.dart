import 'package:doctorapp/central_screen/home/new_journal_entries/new_journal_entries_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewJournalEntries extends StatefulWidget {
  @override
  _NewJournalEntriesState createState() => _NewJournalEntriesState();
}

class _NewJournalEntriesState extends State<NewJournalEntries> {
  final List<NewJournalEntriesTile> newJournalEntries = <NewJournalEntriesTile>[
    NewJournalEntriesTile("\"Pain on my side\"", "8/07/20", false),
    NewJournalEntriesTile(
        "\"Light-headedness since taking meds\"", "4/14/20", true),
    NewJournalEntriesTile(
        "\"My ego is too big for my head\" - Ethan", "7/14/20", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text("New Journal Entries",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)
                //DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.4),
                ),
          ),
          getNewJournalEntryTiles(),
        ],
      ),
    );
  }

  Widget getNewJournalEntryTiles() {
    if (newJournalEntries.length > 0) {
      return new Column(children: newJournalEntries);
    } else {
      return Container(
        child: Text("No new Entries"),
        margin: new EdgeInsets.symmetric(vertical: 20.0),
      );
    }
  }
}
