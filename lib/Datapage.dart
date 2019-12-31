import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef GetNote(String note);
class Datapage extends StatefulWidget {

  final String userName;
  final GetNote note;
  Datapage({ this.userName, this.note});

  @override
  _DatapageState createState() => _DatapageState();
}

class _DatapageState extends State<Datapage> {
  final noteTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write Something....",
                      ),
                      maxLines: 9,
                      style: TextStyle(fontSize: 21),
                      controller: noteTextController,
                    )),
              ],
            ),
            Container(

              padding: EdgeInsets.only(left: 40, right: 40),
              margin: EdgeInsets.only(top: 250),
              child: SizedBox(

                child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    widget.note(noteTextController.text);
                    Navigator.of(context).pop();
                    noteTextController.clear();
                    Text("cicked");
                  },
                  child: Column(

                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>
                          [

                            RichText(
                              text: TextSpan(
                                text: 'Write ',
                                style: TextStyle(color: Colors.white,
                                  fontSize: 19,),
                                children: <TextSpan>[
                                  TextSpan(text: 'Post',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 19)),
                                ],
                              ),
                            ),

                            Icon(Icons.add, color: Colors.white,
                              textDirection: TextDirection.ltr,),

                          ],

                        ),

                      ]

                  ),

                ),

              ),
            ),

          ],
        ),

        appBar: AppBar(

          titleSpacing: 20.0,
          title: Text('Hello ${widget.userName}', style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.black),),

        )
    );
  }
}