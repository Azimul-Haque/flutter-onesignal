import 'package:flutter/material.dart';
import '../globals.dart';
import 'dart:async';
import 'dart:math';

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
  Random random = new Random();
  String test;
  
  var examFormKey = GlobalKey<FormState>();
  var qstnAmntController = TextEditingController();
  var durationController = TextEditingController();

  var questionamnt, duration;

  QuestionHelper _questionHelper;
  List<QuestionsModel> questions = [];
  Map myOptionsMap = {};
  Map myOptionsListMap = {};

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
          Navigator.pop(context);
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
      test = random.nextInt(100).toString();
    });
    if(questions.length == 0) {
      // ekhane kaaj ache...
    } else if(questions.length > 0) {
      for(var j=0; j<questions.length; j++) {
        List tempoptions = [];
        tempoptions.add(questions[j].answer);
        tempoptions.add(questions[j].incanswer.split(',')[0]);
        tempoptions.add(questions[j].incanswer.split(',')[1]);
        tempoptions.add(questions[j].incanswer.split(',')[2]);
        tempoptions.shuffle();
        myOptionsListMap['list' + questions[j].id.toString()] = tempoptions;
        // print(tempoptions);
        // print(myOptionsListMap['list' + questions[j].id.toString()][0]);
      }
      _startTimer(drtn);
      // Navigator.of(context).pop(); // KAAJ ACHE KINTU, APATOT COMMENTED...
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
    // showExamDialog();
    _questionHelper = QuestionHelper();
    isLoading = true;
    // _startTimer('20');
    _loadDB('3', '20');
    
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
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: createRadioListOptions(questions[index]),
                      // <Widget>[
                      //   SizedBox(height: 10,),
                      //   Text(test),
                      //   // Text(questions[index].answer + ", " + questions[index].incanswer.split(',')[0]),
                      //   // Text(questions[index].answer + ", " + questions[index].incanswer.split(',')[0]),
                      //   // Text(questions[index].answer + ", " + questions[index].incanswer.split(',')[0]),
                      //   // Text(questions[index].answer + ", " + questions[index].incanswer.split(',')[0]),
                      // ],
                    ),
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

  List<Widget> createRadioListOptions(_qstn) {
    List<Widget> options = [];
    // List tempoptions = [];
    // tempoptions.add(_qstn.answer);
    // tempoptions.add(_qstn.incanswer.split(',')[0]);
    // tempoptions.add(_qstn.incanswer.split(',')[1]);
    // tempoptions.add(_qstn.incanswer.split(',')[2]);
    // tempoptions.shuffle();
    
    for(var i=0; i<myOptionsListMap['list' + _qstn.id.toString()].length; i++) {
      options.add(
        Row(
          children: <Widget>[
            Flexible(
            fit: FlexFit.loose,
            child: RadioListTile(
              groupValue: myOptionsMap['qstn' + _qstn.id.toString()],
              value: i,
              title: Text(myOptionsListMap['list' + _qstn.id.toString()][i]),
              onChanged: (val) {
                setState(() {
                  myOptionsMap['qstn' + _qstn.id.toString()] = val;
                });
                // print(myOptionsMap['qstn' + _qstn.id.toString()]);
                // print(myOptionsListMap['list' + _qstn.id.toString()]);
              },
              activeColor: Colors.green,
            ),
          ),
        ]),
      );
    }
    return options;
  }

}