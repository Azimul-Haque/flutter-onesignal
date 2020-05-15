import 'package:flutter/material.dart';

class QuestionAnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("প্রশ্নোত্তর"),
        // automaticallyImplyLeading: false,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.check), 
        //     onPressed: () async{
        //       Navigator.pop(context);
        //     },
        //     tooltip: "Ok",
        //   ),
        // ],
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15, right: 15, bottom: 7.5, left: 15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                // decoration: BoxDecoration(color: Colors.red),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 1.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      1.0, // vertical, move down 10
                    ),
                  )],
                ),
                child: Text("প্রশ্নঃ ", style: TextStyle(color: Colors.black87, fontSize: 16),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 7.5, right: 15, bottom: 15, left: 15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                // decoration: BoxDecoration(color: Colors.red),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(
                    color: Colors.blue,
                    blurRadius: 1.0, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      1.0, // vertical, move down 10
                    ),
                  )],
                ),
                child: Text("test", style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
            ),
          ],
        ),
      ],)
    );
  }
}