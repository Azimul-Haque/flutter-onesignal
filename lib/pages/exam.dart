import 'package:flutter/material.dart';
import '../globals.dart';
import 'dart:async';

import 'package:project1/models/QuestionsModel.dart';
import 'package:project1/models/ExamModel.dart';
import 'package:project1/pages/examresult.dart';
import 'package:http/http.dart' as http;

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  int _counter = 0;
  String formattedtime = '00:00:00';
  Timer _timer = Timer(Duration(milliseconds: 1), () {});
  bool isLoading = true;

  var examFormKey = GlobalKey<FormState>();
  var qstnAmntController = TextEditingController();
  var durationController = TextEditingController();

  var questionamnt = '0';
  var duration = '0';

  late QuestionHelper _questionHelper;
  List<QuestionsModel> questions = [];
  Map myOptionsMap = {};
  Map myOptionsListMap = {};
  Map isRadioSelected = {};
  Map optionsSelected = {};

  int rightanswer = 0;
  int wronganswer = 0;

  late ExamHelper _examHelper;
  late ExamModel currentExam;

  Future<void> _startTimer(tmrdrtn) async {
    await Future.delayed(Duration(milliseconds: 500)); // THIS LITLE LINE!!!
    setState(() {
      _counter = int.tryParse(tmrdrtn)! * 60; // convert into seconds
    });

    // if (_timer != null) {
    //   _timer.cancel();
    // }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 1) {
          _counter--;
        } else {
          _timer.cancel();
          Navigator.pop(context); // close exam page

          // open new page
          var totalmarks = rightanswer - wronganswer * 0.5;
          _insertExam(questions.length, duration, rightanswer, wronganswer);
          Route route = MaterialPageRoute(
              builder: (context) => ExamResultPage([
                    questions,
                    duration,
                    rightanswer,
                    wronganswer,
                    totalmarks,
                    myOptionsListMap,
                    optionsSelected
                  ]));
          Navigator.push(context, route);

          // just call it
          http.get(Uri.parse(
              'https://constitution.orbachinujbuk.com/onesignal/examcount/complete/api'));
        }
      });
      var now = Duration(seconds: _counter);
      formattedtime = "${formatDuration(now)}";
    });
  }

  String formatDuration(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, '0');
  }

  _loadDB(amnt, drtn) async {
    await Future.delayed(Duration(seconds: 1)); // THIS LITLE LINE!!!

    var newquestions =
        await _questionHelper.getSomeQuestions(amnt); // kaaj ache...
    setState(() {
      questions = newquestions;
      isLoading = false;
    });

    if (questions.length == 0) {
      // ekhane kaaj ache...
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content:
              const Text('অনুগ্রহ করে প্রশ্নোত্তর অংশে গিয়ে প্রশ্ন লোড করুন।'),
        ),
      );
    } else if (questions.length > 0) {
      for (var j = 0; j < questions.length; j++) {
        List tempoptions = [];
        tempoptions.add(questions[j].answer);
        tempoptions.add(questions[j].incanswer.split(',')[0]);
        tempoptions.add(questions[j].incanswer.split(',')[1]);
        tempoptions.add(questions[j].incanswer.split(',')[2]);
        tempoptions.shuffle();
        myOptionsListMap['list' + questions[j].id.toString()] = tempoptions;
        isRadioSelected['selected' + questions[j].id.toString()] = false;
      }
      _startTimer(drtn);
      Navigator.of(context).pop();
      // close the popup... KAAJ ACHE KINTU, APATOT COMMENTED...
    }
    // just call it
    http.get(Uri.parse(
        'https://constitution.orbachinujbuk.com/onesignal/examcount/initiate/api'));
  }

  void handleSubmit() {
    if (examFormKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      examFormKey.currentState!.save();
      _loadDB(this.questionamnt, this.duration);
    }
  }

  _insertExam(totalqstn, duration, rightanswer, wronganswer) {
    currentExam = ExamModel(
        totalqstn: totalqstn,
        duration: int.parse(duration),
        rightanswer: rightanswer,
        wronganswer: wronganswer,
        createdat: DateTime.now().toString());
    _examHelper.insertExam(currentExam);
    // print("DB insertion done");
  }

  @override
  void initState() {
    super.initState();
    showExamDialog();
    _questionHelper = QuestionHelper();
    isLoading = true;
    _examHelper = ExamHelper();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return showAlertDialog();
      },
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text("পরীক্ষা"),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            TextButton(
              child: Text(
                formattedtime,
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: 'Raleway'),
              ),
              onPressed: () async {},
            ),
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () async {
                showAlertDialog();
                // setState(() {
                //   // formattedtime = '00:00:00';
                // });
                // Navigator.pop(context);
              },
              tooltip: "দাখিল করুন",
            ),
          ],
          flexibleSpace: appBarStyle(),
        ),
        body: Column(children: <Widget>[
          SizedBox(
            height: 5,
          ),
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
                      //   // Text(questions[index].answer + ", " + questions[index].incanswer.split(',')[0]),
                      // ],
                    ),
                  ),
                  margin:
                      EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                  elevation: 2,
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ]),
      ),
    );
  }

  showExamDialog() async {
    await Future.delayed(Duration(milliseconds: 500));
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('সংবিধান থেকে পরীক্ষা')),
      content: Form(
        key: examFormKey,
        child: Container(
          height: 200,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: qstnAmntController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "প্রশ্নের সংখ্যা",
                ),
                validator: (value) {
                  if (value!.length == 0) {
                    return "প্রশ্নের সংখ্যা পূরণ আবশ্যক";
                  } else if (int.tryParse(value)! <= 0) {
                    return "প্রশ্ন ০ থেকে বেশি সেট করতে হবে!";
                  } else if (int.tryParse(value)! > 50) {
                    return "৫০ টির বেশি প্রশ্ন সেট করতে পারবেন না!";
                  }
                  return null;
                },
                onSaved: (value) {
                  this.questionamnt = value!;
                },
              ),
              TextFormField(
                controller: durationController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "সময় (মিনিট)",
                ),
                validator: (value) {
                  if (value!.length == 0) {
                    return "সময় পূরণ আবশ্যক";
                  } else if (int.tryParse(value)! <= 0) {
                    return "সময় ০ থেকে বেশি সেট করতে হবে!";
                  } else if (int.tryParse(value)! > 20) {
                    return "সময় ২০ মিনিটের বেশি দেওয়া যাবে না!";
                  }
                  return null;
                },
                onSaved: (value) {
                  this.duration = value!;
                },
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: Text("পরীক্ষা শুরু করুন"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
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
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('পরীক্ষা শেষ করবেন?')),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('আপনি কী পরীক্ষা শেষ করতে চান?'),
          // (1==1) ? CircularProgressIndicator() : CircularProgressIndicator(),
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          child: Text("শেষ করুন"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          onPressed: () async {
            // ignore: unnecessary_null_comparison
            if (_timer != null) {
              _timer.cancel();
            }
            setState(() {
              formattedtime = '00:00:00';
            });

            if (questions.length > 0) {
              showLoadingDialog();
              await Future.delayed(Duration(seconds: 1));
              Navigator.of(context).pop(); // close the loading dialogue
            }
            Navigator.of(context).pop(); // close the alert dialogue
            Navigator.pop(context); // close the page

            // open new page
            if (questions.length > 0) {
              var totalmarks = rightanswer - wronganswer * 0.5;
              _insertExam(questions.length, duration, rightanswer, wronganswer);
              Route route = MaterialPageRoute(
                  builder: (context) => ExamResultPage([
                        questions,
                        duration,
                        rightanswer,
                        wronganswer,
                        totalmarks,
                        myOptionsListMap,
                        optionsSelected
                      ]));
              Navigator.push(context, route);

              // just call it
              http.get(Uri.parse(
                  'https://constitution.orbachinujbuk.com/onesignal/examcount/complete/api'));
            }
          },
        ),
        ElevatedButton(
          child: Text(
            "পরীক্ষা অবিরত রাখুন",
            style: TextStyle(color: Colors.black87),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
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

  showLoadingDialog() {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('নম্বর হিসাব হচ্ছে...')),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
        ],
      ),
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
    for (var i = 0;
        i < myOptionsListMap['list' + _qstn.id.toString()].length;
        i++) {
      options.add(
        Row(children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: RadioListTile(
              groupValue: myOptionsMap['qstn' + _qstn.id.toString()],
              value: i,
              title: Text(myOptionsListMap['list' + _qstn.id.toString()][i]),
              onChanged: !isRadioSelected['selected' + _qstn.id.toString()]
                  ? (val) {
                      setState(() {
                        isRadioSelected['selected' + _qstn.id.toString()] =
                            true;
                        myOptionsMap['qstn' + _qstn.id.toString()] = val;
                        optionsSelected['selected' + _qstn.id.toString()] =
                            myOptionsListMap['list' + _qstn.id.toString()][i];
                        if (myOptionsListMap['list' + _qstn.id.toString()][i] ==
                            _qstn.answer) {
                          rightanswer++;
                        } else {
                          wronganswer++;
                        }
                      });
                      // print('Right Answer: ' + rightanswer.toString());
                      // print('Wrong Answer: ' + wronganswer.toString());
                      // print(myOptionsListMap['list' + _qstn.id.toString()]);
                    }
                  : null,
              activeColor: Colors.green,
            ),
          ),
        ]),
      );
    }
    return options;
  }
}
