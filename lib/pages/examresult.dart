
import 'package:flutter/material.dart';
import '../globals.dart';

class ExamResultPage extends StatefulWidget {
  var questions;
  ExamResultPage(this.questions);
  @override
  _ExamResultPageState createState() => _ExamResultPageState(this.questions);
}

class _ExamResultPageState extends State<ExamResultPage> {
  var questions;
  _ExamResultPageState(this.questions);

  Map myOptionsMap = {};
  Map myOptionsListMap = {};

  _loadOptions(questions) {
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
      // Navigator.of(context).pop(); // KAAJ ACHE KINTU, APATOT COMMENTED...
    }
  }

  @override
  void initState() {
    super.initState();
    // showExamDialog();
    _questionHelper = QuestionHelper();
    isLoading = true;
    // _startTimer('20');
    _loadOptions(questions);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সংবিধান"),
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
                  title: Text(questions[index].question),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: createRadioListOptions(questions[index]),
                    // <Widget>[
                    //   SizedBox(height: 10,),
                    //   Text(test),
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
                  if(myOptionsListMap['list' + _qstn.id.toString()][i] == _qstn.answer) {
                    print('Right Answer');
                  } else {
                    print('Wrong Answer');
                  }
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