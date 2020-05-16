import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:project1/QuestionsModel.dart';

import 'package:project1/pages/page2.dart';

class QuestionAnswerPage extends StatefulWidget {
  QuestionAnswerPage({Key key}) : super(key: key);
  @override
  _QuestionAnswerPageState createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  GlobalKey <RefreshIndicatorState> refreshKey = GlobalKey <RefreshIndicatorState>();

  QuestionHelper _questionHelper;
  Future<List<QuestionsModel>> questions;
  QuestionsModel currentQuestion;
  

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 2));
    // this._getQuestions();
    // this.loadJsonData();
    this._showSnackbar("তথ্য হালনাগাদ হয়েছে!");
    return null;
  }

  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }
  // Future<bool> _getQuestions() async {
  //   try {
  //     String serviceURL = "http://192.168.43.81:8000/files/questions.html"; // https://jsonplaceholder.typicode.com/posts
  //     var jsonDataQuestions = await http.get(serviceURL);
  //     setState(() {
  //       questions = json.decode(jsonDataQuestions.body.toString());
  //     });
  //   } catch (_) {
  //     _showSnackbar("ইন্টারনেট সংযোগ চালু করুন।");
  //   }
  //   return true;
  // }

  @override
  void initState() {
    super.initState();
    // _questionHelper = QuestionHelper();
    QuestionHelper.db.initDatabase();
    _loadDB();
  }
  _loadDB() {
    // List<QuestionsModel> newquestions = await _questionHelper.getAllQuestion();
    setState(() {
      questions = _questionHelper.getAllQuestion();
    });
    return questions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("প্রশ্নোত্তর"),
        // automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              currentQuestion = QuestionsModel(question: "Test Q?", answer: "Test A", count: 3);
              _questionHelper.insertQuestion(currentQuestion);
              setState(() {
                questions = _questionHelper.getAllQuestion();
              });
              // Navigator.pop(context);
            },
            tooltip: "Ok",
          ),
        ],
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

        // Expanded(
        //   child: ListView.builder(
        //     itemCount: questions.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Card(
        //         child: ListTile(
        //           // leading: CircleAvatar(child: Text(questions[index]["question"][0]),),
        //           title: Text(questions[index].question),
        //           subtitle: Text(questions[index].answer),
        //           // trailing: Icon(Icons.pageview),
        //           onTap: (){
        //             // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
        //             // Navigator.push(context, route);
        //             // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
        //           },
        //         ),
        //       );
        //     },
        //   ),
        // ),
        Expanded(
          child: FutureBuilder(
            future: questions,
            builder: (context, snapshot) {
              if(snapshot.hasData) {
                return dataList(snapshot.data);
              }
              
              if(null == snapshot.data || snapshot.data.length == 0) {
                return Text("Not availale");
              }

              return CircularProgressIndicator();
            }
          ),
        ),

      ],),
    ),
    );
  }

    ListView dataList(List<QuestionsModel> questions) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            // leading: CircleAvatar(child: Text(questions[index]["question"][0]),),
            title: Text(questions[index].question),
            subtitle: Text(questions[index].answer),
            // trailing: Icon(Icons.pageview),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
        );
      },
    );
  }
}