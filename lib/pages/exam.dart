import 'package:flutter/material.dart';
import '../globals.dart';

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        showAlertDialog();
        return null;
      },
      child: Scaffold(
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
      ),
    );
  }

  showAlertDialog() {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('পরীক্ষা শেষ করবেন?')),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children : <Widget>[
          CircularProgressIndicator(),
        ],
      ),
      actions: <Widget>[
        RaisedButton(
          child: Text("শেষ করুন"),
          color: Colors.green,
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.pop(context);
          },
        ),
        RaisedButton(
          child: Text("পরীক্ষা দিতে থাকুন"),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}