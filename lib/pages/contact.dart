import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../globals.dart';
class ContactPage extends StatefulWidget {
  var data;
  ContactPage(this.data);
  @override
  _ContactPageState createState() => _ContactPageState(this.data);
}

class _ContactPageState extends State<ContactPage> {
  var data;
  _ContactPageState(this.data);
  GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  String userName = 'N/A';

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

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var messageController = TextEditingController();

  var name, email, message;

  void handleSubmit() {
    if(formKey.currentState.validate()) {
      showAlertDialog(context);
      formKey.currentState.save();
      this.postMessage(this.name, this.email, this.message);
    }
  }
  void handleReset() {
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }
  _loadName() async{
    setState(() {
      userName = this.data ?? 'N/A';
      nameController.text = userName;
    });
  }
  postMessage(String name, String email, String message) async{
    var data = {
      'name': name,
      'email': email,
      'message': message,
    };
    try {
      FocusScope.of(context).unfocus(); // hide the keyboard
      http.Response response = await http.post(
        'https://killa.com.bd/onesignal/contact/api',
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
          this._showToast('আপনার মতামত সার্ভারে পাঠানো হয়েছে। ধন্যবাদ!');
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
  void initState() {
    super.initState();
    _loadName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("মতামত জানান"),
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
            Text("আপনার মূল্যবান মতামত জানান", style: TextStyle(color:Colors.green[800], fontSize: 18)),
            SizedBox(height: 3,),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text("এই অ্যাপটি নিয়ে আপনার মূল্যবান মতামত আমাদের জানান। কোন পরামর্শ বা উপদেশ থাকলে অনুগ্রহ করে লিখুন।", style: TextStyle(color:Colors.green[900], fontSize: 14, height: 1.2), textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Form(
                key: formKey,
                child: Column(children: <Widget>[
                  SizedBox(height: 10,),
                  TextFormField(
                    // style: TextStyle( fontSize: 14.0, height: 1.0, color: Colors.black ),
                    decoration: InputDecoration(
                      labelText: "আপনার নাম",
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    controller: nameController,
                    maxLength: 100,
                    validator: (value) {
                      if(value.length == 0) {
                        return "নাম পূরণ আবশ্যক";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.name = value;
                    },
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: emailController,
                    maxLength: 100,
                    decoration: InputDecoration(
                      labelText: "আপনার ইমেইল এড্রেস",
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    validator: (value) {
                      if(value.length == 0) {
                        return "ইমেইল পূরণ আবশ্যক";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.email = value;
                    },
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: messageController,
                    maxLength: 255,
                    keyboardType: TextInputType.multiline, 
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: "মতামত লিখুন",
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    validator: (value) {
                      if(value.length == 0) {
                        return "মতামত পূরণ আবশ্যক";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      this.message = value;
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