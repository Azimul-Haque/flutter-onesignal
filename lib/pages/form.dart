import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../globals.dart';
class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  _showToast(String textToast) {
    Fluttertoast.showToast(
      msg: textToast,
      backgroundColor: Colors.green[900],
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      fontSize: 14.0,
    );
  }
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }

  var questionController = TextEditingController();
  var answerController = TextEditingController();

  var question, answer;

  void handleSubmit() {
    if(formKey.currentState.validate()) {
      showAlertDialog(context);
      formKey.currentState.save();
      this.postQuestion(this.question, this.answer);
    }
  }
  void handleReset() {
    questionController.clear();
    answerController.clear();
  }
  postQuestion(String question, String answer) async{
    var data = {
      'question': question,
      'answer': answer,
    };
    try {
      FocusScope.of(context).unfocus(); // hide the keyboard
      http.Response response = await http.post(
        'https://killa.com.bd/onesignal/post/question/api',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=utf-8',
          'Accept' : 'application/json',
        },
        body: jsonEncode(data),
      );
      print(response.statusCode);
      if(response.statusCode == 200) {
        var body = json.decode(response.body);
        if(body["success"] == true) {
          // print(body);
          Navigator.of(context, rootNavigator: true).pop();
          this._showToast('আপনার প্রশ্ন সার্ভারে পাঠানো হয়েছে। ধন্যবাদ!');
          Navigator.pop(context);
        }
      } else {
        Navigator.of(context, rootNavigator: true).pop();
        _showSnackbar("সমস্যা হচ্ছে, আবার চেষ্টা করুন।");
      }
    } catch (_) {
      // print(_);
      Navigator.of(context, rootNavigator: true).pop();
      _showSnackbar("ইন্টারনেট সংযোগ চালু করুন।");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("প্রশ্ন যোগ করুন"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_outline), 
            onPressed: () async{
              handleReset();
              _showToast('মুছে দেওয়া হয়েছে!');
            },
            tooltip: "ফর্ম ক্লিয়ার করুন",
          ),
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              handleSubmit();
            },
            tooltip: "পাঠিয়ে দিন",
          ),
        ],
        flexibleSpace: appBarStyle(),
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 7,),
        Column(
          children: <Widget>[
            SizedBox(height: 5,),
            Text("সংবিধান থেকে প্রশ্ন যোগ করুন", style: TextStyle(color:Colors.green[800], fontSize: 18)),
            SizedBox(height: 3,),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text("আপনার পাঠানো প্রশ্নটি যাচাই করে সার্ভারে অনুমোদন করা হবে। আপনার প্রশ্নটি অনুমোদিত হলে সকল ব্যবহারকারী (আপনিসহ) 'প্রশ্নোত্তর' পাতায় গিয়ে 'Sync' করে নিলেই প্রশ্নটি উক্ত তালিকায় যোগ হয়ে যাবে।", style: TextStyle(color:Colors.green[900], fontSize: 14, height: 1.2), textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Form(
                key: formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                    controller: questionController,
                    maxLength: 160,
                    decoration: InputDecoration(
                      labelText: "প্রশ্ন",
                    ),
                    validator: (value) {
                      if(value.length == 0) {
                        return "প্রশ্ন পূরণ আবশ্যক";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.question = value;
                    },
                  ),
                  // TextFormField(
                  //   controller: phoneController,
                  //   keyboardType: TextInputType.number,
                  //   maxLength: 11,
                  //   decoration: InputDecoration(
                  //     labelText: "Phone Number",
                  //   ),
                  //   validator: (value) {
                  //     if(value.length < 11) {
                  //       return "Phone Number must be 11 digits";
                  //     }
                  //   },
                  //   onSaved: (value) {
                  //     this.phone = value;
                  //   },
                  // ),
                  TextFormField(
                    controller: answerController,
                    maxLength: 100,
                    decoration: InputDecoration(
                      labelText: "উত্তর",
                    ),
                    validator: (value) {
                      if(value.length == 0) {
                        return "উত্তর পূরণ আবশ্যক";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.answer = value;
                    },
                  ),
                ],),
              ),
            ),
          ],
        ),
      ],)
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('সার্ভারে পাঠানো হচ্ছে...')),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children : <Widget>[
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