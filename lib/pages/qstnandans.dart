import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

import 'package:project1/pages/page2.dart';

class QuestionAnswerPage extends StatefulWidget {
  QuestionAnswerPage({Key key}) : super(key: key);
  @override
  _QuestionAnswerPageState createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  GlobalKey <RefreshIndicatorState> refreshKey = GlobalKey <RefreshIndicatorState>();
  List questions = [];

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 2));
    this._getQuestions();
    this._showSnackbar("তথ্য হালনাগাদ হয়েছে!");
    return null;
  }
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }
  Future<bool> _getQuestions() async {
    String serviceURL = "http://192.168.43.81:8000/files/questions.html"; // https://jsonplaceholder.typicode.com/posts
    var jsonDataQuestions = await http.get(serviceURL);
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          questions = json.decode(jsonDataQuestions.body.toString());
        });
      }
    } on SocketException catch (_) {
      _showSnackbar("অনুগ্রহ করে ইন্টারনেট কানেকশনটি অন করুন।");
    }
    return true;
  }

  @override
  void initState() {
    this._getQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("প্রশ্নোত্তর"),
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
      ),
    body: RefreshIndicator(
      key: refreshKey,
      onRefresh: () async{
        await refreshList();
      },
      child: Column(children: <Widget>[
        // Container(
        //   margin: EdgeInsets.all(10),
        //   child: TextField(
        //     decoration: InputDecoration(
        //       hintText: "Search from posts...",
        //     ),
        //     onChanged: (String str) {
        //       // this.searchData(str);
        //     },
        //   ),
        // ),
        Expanded(
          child: ListView.builder(
            itemCount: questions.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  // leading: CircleAvatar(child: Text(questions[index]["question"][0]),),
                  title: Text(questions[index]["question"]),
                  subtitle: Text(questions[index]["answer"]),
                  // trailing: Icon(Icons.pageview),
                  onTap: (){
                    // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
                    // Navigator.push(context, route);
                    // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
                  },
                ),
              );
            },
          ),
        ),
      ],),
    ),
    );
  }
}