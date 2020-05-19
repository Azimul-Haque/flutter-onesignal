import 'package:flutter/material.dart';
import '../globals.dart';
import 'dart:async';

import 'package:project1/QuestionsModel.dart';

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int _counter = 0;
  String formattedtime = '00:00:00';
  Timer _timer;
  bool isLoading;
  
  var examFormKey = GlobalKey<FormState>();
  var qstnAmntController = TextEditingController();
  var durationController = TextEditingController();

  var questionamnt, duration;

  QuestionHelper _questionHelper;
  List<QuestionsModel> questions = [];

  void _startTimer(tmrdrtn) {
    setState(() {
      _counter = int.tryParse(tmrdrtn) * 60; // convert into seconds
    });
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
  _loadDB(amnt, drtn) async{
    await Future.delayed(Duration(seconds: 1)); // THIS LITLE LINE!!!
    var newquestions = await _questionHelper.getSomeQuestions(amnt); // kaaj ache...
    setState(() {
      questions = newquestions;
      isLoading = false;
    });
    if(questions.length == 0) {
      // ekhane kaaj ache...
    } else if(questions.length > 0) {
      _startTimer(drtn);
      Navigator.of(context).pop();
    }

  }
  void handleSubmit() {
    if(examFormKey.currentState.validate()) {
      FocusScope.of(context).unfocus();
      examFormKey.currentState.save();
      _loadDB(this.questionamnt, this.duration);
    }
  }

  @override
  void initState() {
    super.initState();
    showExamDialog();
    // _startTimer();
    _questionHelper = QuestionHelper();
    isLoading = true;
    // _loadDB();
    
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
                if (_timer != null) {
                  _timer.cancel();
                }
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

  showExamDialog() async{
    await Future.delayed(Duration(seconds: 1)); 
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('সংবিধান থেকে পরীক্ষা')),
      content: Form(
        key: examFormKey,
        child: Container(
          height: 200,
          child: Column(children: <Widget>[
            TextFormField(
              controller: qstnAmntController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "প্রশ্নের সংখ্যা",
              ),
              validator: (value) {
                if(value.length == 0) {
                  return "প্রশ্নের সংখ্যা পূরণ আবশ্যক";
                } else if(int.tryParse(value) > 50) {
                  return "৫০ টির বেশি প্রশ্ন সেট করতে পারবেন না!";
                }
                return null;
              },
              onSaved: (value) {
                this.questionamnt = value;
              },
            ),
            TextFormField(
              controller: durationController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "সময় (মিনিট)",
              ),
              validator: (value) {
                if(value.length == 0) {
                  return "সময় পূরণ আবশ্যক";
                } else if(int.tryParse(value) > 15) {
                  return "সময় ১৫ মিনিটের বেশি দেওয়া যাবে না!";
                }
                return null;
              },
              onSaved: (value) {
                this.duration = value;
              },
            ),
          ],),
        ),
      ),
      actions: <Widget>[
        RaisedButton(
          child: Text("শুরু করুন"),
          color: Colors.green,
          onPressed: () {
            handleSubmit();
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
            if (_timer != null) {
              _timer.cancel();
            }
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