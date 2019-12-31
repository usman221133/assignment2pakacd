import 'package:flutter/material.dart';
import 'package:pak_ui/Listing.dart';
import 'package:flutter/widgets.dart';
import 'package:pak_ui/Notes.dart';
import 'package:pak_ui/Datapage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Notes> allNotes = [];

  void getNote(String note) {
    setState(() {
      allNotes.add(new Notes(userName: 'M Usman Afzal', noteDesc: note));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Listing(),

            Container(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                children: allNotes.map((note) {
                  return allNotes.isEmpty
                      ? Center(
                    child: Text(' List ...'),
                  )
                      : Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(note.userName),
                              Text("31 DEC 2019"),
                            ],
                          ),
                          Column(
                            children: <Widget>[Text(note.noteDesc)],
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_HomeState) {
              return Datapage(
                userName: 'M usman Afzal',
                note: getNote,
              );
            }));
          }),
    );
  }
}


