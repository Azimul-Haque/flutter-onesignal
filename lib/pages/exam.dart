import 'package:flutter/material.dart';
import '../globals.dart';
import 'dart:async';

import 'package:project1/QuestionsModel.dart';

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int _counter = 100;
  String formattedtime = '00:00:00';
  Timer _timer;
  bool isLoading;

  QuestionHelper _questionHelper;
  List<QuestionsModel> questions = [];

  void _startTimer() {
    // _counter = 100;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
      var now = Duration(seconds: _counter);
      formattedtime = "${formatDuration(now)}";
    });
  }
  String formatDuration(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, '0');
  }
  _loadDB() async{
    await Future.delayed(Duration(seconds: 1)); // THIS LITLE LINE!!!
    var newquestions = await _questionHelper.getSomeQuestions('10'); // kaaj ache...
    setState(() {
      questions = newquestions;
      isLoading = false;
    });
    if(questions.length == 0) {
      // ekhane kaaj ache...
    }
  }
  @override
  void initState() {
    super.initState();
    _startTimer();
    _questionHelper = QuestionHelper();
    isLoading = true;
    _loadDB();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        showAlertDialog();
        return null;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("পরীক্ষা"),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            FlatButton(
              child: Text(
                formattedtime,
                style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Raleway'),
              ),
              onPressed: () async{},
            ),
            IconButton(
              icon: Icon(Icons.check), 
              onPressed: () async{
                _timer.cancel();
                setState(() {
                  formattedtime = '00:00:00';
                });
                // Navigator.pop(context);
              },
              tooltip: "দাখিল করুন",
            ),
          ],
          flexibleSpace: appBarStyle(),
        ),
        body: Column(children: <Widget>[
          SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    // leading: CircleAvatar(child: Text(questions[index].question[0]),),
                    title: Text(questions[index].id.toString() + "-" + questions[index].question),
                    subtitle: Text(questions[index].answer + ", " + questions[index].incanswer.split(',')[0]),
                    // onTap: (){
                    //   // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
                    //   // Navigator.push(context, route);
                    //   // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
                    // },
                  ),
                  margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                  elevation: 2,
                );
              },
            ),
          ),
          SizedBox(height: 5,),
        ]),
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
            _timer.cancel();
            setState(() {
              formattedtime = '00:00:00';
            });
            Navigator.of(context).pop();
            Navigator.pop(context);
          },
        ),
        RaisedButton(
          child: Text("পরীক্ষা অবিরত রাখুন"),
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