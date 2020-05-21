
import 'package:flutter/material.dart';
import '../globals.dart';

import 'package:percent_indicator/percent_indicator.dart';

class ExamResultPage extends StatefulWidget {
  var data;
  ExamResultPage(this.data);
  @override
  _ExamResultPageState createState() => _ExamResultPageState(this.data);
}

class _ExamResultPageState extends State<ExamResultPage> {
  var data;
  _ExamResultPageState(this.data);

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
    _loadOptions(data[0]);
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
              color: Colors.blue[50],
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(children: <Widget>[
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('মোট প্রশ্নঃ ' + data[0].length.toString() + 'টি, সময়ঃ ' + data[1].toString() + ' মিনিট'),
                        Text('উত্তর প্রদানঃ ' + (data[2] + data[3]).toString() + 'টি, সঠিকঃ ' + data[2].toString() + 'টি, ভুলঃ ' + data[3].toString() + 'টি'),
                        Text('প্রাপ্ত নম্বরঃ ' + data[4].toString() + ' / ' + data[0].length.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ]
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 75.0,
                          lineWidth: 5.0,
                          animation: true,
                          animationDuration: 1200,
                          percent: data[4]/data[0].length,
                          center: new Text(
                            ((data[4]/data[0].length) * 100).toStringAsFixed(2) + '%',
                            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.5),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.purple[700],
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
        SizedBox(height: 5,),
        Text('সঠিক উত্তরসমূহ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Expanded(
          child: ListView.builder(
            itemCount: data[0].length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(data[0][index].question),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    createRadioListOptions(data[0][index]),
                    // <Widget>[
                    //   SizedBox(height: 10,),
                    //   Text('সঠিক উত্তরঃ ' + data[0][index].answer),
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