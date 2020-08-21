import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewJournalEntriesTile extends StatefulWidget {
  @override
  _NewJournalEntriesTileState createState() => _NewJournalEntriesTileState();

  final String journalSubject;
  final String date;
  final bool isTagged;

  NewJournalEntriesTile(this.journalSubject, this.date, this.isTagged);
}

class _NewJournalEntriesTileState extends State<NewJournalEntriesTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.book,
                color: Theme.of(context).accentColor,
              ),
              Text(widget.journalSubject),
              Text(widget.date),
              taggedWidget(),
            ],
          ),
          margin: new EdgeInsets.symmetric(vertical: 25.0),
          width: 500,
        ),
        onTap: () {
          //_showModalBottomSheet(context);
        },
      ),
    );
  }

  Widget taggedWidget() {
    if (widget.isTagged == true) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            Text(
              " [Patient] Tagged you in this Entry",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: new EdgeInsets.symmetric(horizontal: 50),
      );
    } else {
      return Container();
    }
  }
}
