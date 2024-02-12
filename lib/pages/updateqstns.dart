import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:project1/models/QuestionsModel.dart';
import '../globals.dart';

class UpdateQstnPage extends StatefulWidget {
  @override
  _UpdateQstnPageState createState() => _UpdateQstnPageState();
}

class _UpdateQstnPageState extends State<UpdateQstnPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  late QuestionHelper _questionHelper;
  List syncquestions = [];
  late QuestionsModel currentQuestion;

  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(
      content: Text(textForSnackbar),
    );
    // _globalKey.currentState.showSnackBar(_mySnackbar);
    ScaffoldMessenger.of(context).showSnackBar(_mySnackbar);
  }

  _getSynced() async {
    showAlertDialog(context);
    try {
      int countinsertion = 0;

      await Future.delayed(Duration(seconds: 1)); // THIS LITLE LINE!!!
      await _questionHelper
          .clearQstnTable(); // WE ARE CLEARING THE WHOLE TABLE...
      var newquestions = await _questionHelper.getAllQuestion();

      String _apiKey = "rifat2020";
      String serviceURL =
          "https://constitution.orbachinujbuk.com/broadcast?api_key=" +
              _apiKey +
              "&last_id=" +
              newquestions.length.toString();
      var jsonDataQuestions = await http.get(Uri.parse(serviceURL));
      setState(() {
        syncquestions = json.decode(jsonDataQuestions.body.toString());
      });
      syncquestions.forEach((element) {
        // print(element.toString());
        currentQuestion = QuestionsModel(
            question: element["question"],
            answer: element["answer"],
            incanswer: element["incanswer"]);
        _questionHelper.insertQuestion(currentQuestion);
        countinsertion++;
      });
      // print("Inserted "+ syncquestions.length.toString() + " elements");
      if (countinsertion == 0) {
        _showSnackbar("সার্ভারের সর্বশেষ সকল প্রশ্ন ইতোমধ্যে উপস্থিত!");
        Navigator.of(context).pop();
      } else {
        _showSnackbar(countinsertion.toString() +
            " টি প্রশ্ন হালনাগাদ করা হয়েছে! (" +
            (jsonDataQuestions.contentLength! / 1000).toStringAsFixed(2) +
            "KB)");
        Navigator.of(context).pop();
      }
    } catch (_) {
      // print(_);
      _showSnackbar("ইন্টারনেট সংযোগ চালু করুন।");
      Navigator.of(context).pop();
    }
  }

  @override
  void initState() {
    super.initState();
    _questionHelper = QuestionHelper();
    _getSynced();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: AppBar(
          title: Text("নোটিফিকেশনে প্রাপ্ত আপডেট"),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () async {
                // Navigator.pop(context);
                Navigator.pushNamedAndRemoveUntil(
                    context, "/", (route) => false);
              },
              tooltip: "ঠিক আছে",
            ),
          ],
          flexibleSpace: appBarStyle(),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                      top: 15, right: 15, bottom: 7.5, left: 15),
                  child: Text("প্রশ্নের আপডেটটি পেতে নিচের বাটনে ক্লিক করুন"),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 30, bottom: 10, left: 30),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud_download,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "আপডেট করুন",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    // color: Colors.green,
                    onPressed: () {
                      _getSynced();
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  showAlertDialog(BuildContext context) {
    // await Future.delayed(Duration(seconds: 1));
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('সার্ভার থেকে আপডেট হচ্ছে...')),
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
}
