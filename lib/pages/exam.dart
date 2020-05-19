import 'package:flutter/material.dart';
import '../globals.dart';

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ইতিহাস"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              Navigator.pop(context);
            },
            tooltip: "দাখিল করুন",
          ),
        ],
        flexibleSpace: appBarStyle(),
      ),
      body: ListView(children: <Widget>[
        Text("Exam Page"),
      ],),
    );
  }
}