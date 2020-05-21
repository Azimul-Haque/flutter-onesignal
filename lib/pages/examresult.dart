
import 'package:flutter/material.dart';
import '../globals.dart';

import 'package:percent_indicator/percent_indicator.dart';

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
    _loadOptions(questions);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("পরীক্ষার ফলাফল"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              Navigator.pop(context);
            },
            tooltip: "ঠিক আছে",
          ),
        ],
        flexibleSpace: appBarStyle(),
      ),
      body: Column(children: <Widget>[
        SizedBox(height: 5,),
        Row(children: <Widget>[
          Expanded(
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(children: <Widget>[
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('মোট প্রশ্নঃ 20টি, সময়ঃ 5 মিনিট'),
                        Text('উত্তর প্রদানঃ 18টি, সঠিকঃ 15টি, ভুলঃ 3টি'),
                        Text('প্রাপ্ত নম্বরঃ 13.5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ]
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 80.0,
                          lineWidth: 7.0,
                          animation: true,
                          animationDuration: 1200,
                          percent: 0.7,
                          center: new Text(
                            "70.0%",
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ],),
              ),
              margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
              elevation: 2,
            ),
          ),
        ],),
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
              groupValue: _qstn.answer,
              value: myOptionsListMap['list' + _qstn.id.toString()][i],
              title: Text(myOptionsListMap['list' + _qstn.id.toString()][i]),
              onChanged: (val) {
                
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