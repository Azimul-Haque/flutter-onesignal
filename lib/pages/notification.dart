import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("নোটিফিকেশনে প্রাপ্ত প্রশ্ন"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              Navigator.pop(context);
            },
            tooltip: "Ok",
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                // decoration: BoxDecoration(color: Colors.red),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 3.0, // has the effect of softening the shadow
                    spreadRadius: 2.0, // has the effect of extending the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      1.0, // vertical, move down 10
                    ),
                  )],
                ),
                child: Text("আমি চিনি গো চিনি তোমারে", style: TextStyle(color: Colors.black87, fontSize: 16),),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                // decoration: BoxDecoration(color: Colors.red),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(
                    color: Colors.blue,
                    blurRadius: 3.0, // has the effect of softening the shadow
                    spreadRadius: 2.0, // has the effect of extending the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      1.0, // vertical, move down 10
                    ),
                  )],
                ),
                child: Text("আমি চিনি গো চিনি তোমারে", style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
            ),
          ],
        ),
      ],)
    );
  }
}