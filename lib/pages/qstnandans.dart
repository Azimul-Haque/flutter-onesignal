import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

import 'package:project1/QuestionsModel.dart';

class QuestionAnswerPage extends StatefulWidget {
  QuestionAnswerPage({Key key}) : super(key: key);
  @override
  _QuestionAnswerPageState createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  GlobalKey <RefreshIndicatorState> refreshKey = GlobalKey <RefreshIndicatorState>();

  QuestionHelper _questionHelper;
  List<QuestionsModel> questions = [];
  List syncquestions = [];
  QuestionsModel currentQuestion;
  bool isLoading;
  int countinsertion = 0;
  Future<Null> refreshList() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 2));
    this._loadDB();
    this._showSnackbar("তথ্য হালনাগাদ হয়েছে!");
    return null;
  }

  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }
  _getSynced() async {
    try {
      String serviceURL = "https://killa.com.bd/broadcast"; // https://jsonplaceholder.typicode.com/posts
      var jsonDataQuestions = await http.get(serviceURL);
      setState(() {
        syncquestions = json.decode(jsonDataQuestions.body.toString());
        isLoading = true;
      });
      var jsonDataText = await rootBundle.loadString("assets/data.json");
      setState(() {
        syncquestions = json.decode(jsonDataText);
      });

      syncquestions.forEach((element) {
        print(element.toString());
        currentQuestion = QuestionsModel(question: element["question"], answer: element["answer"], count: 0);
        _questionHelper.insertQuestion(currentQuestion);
        countinsertion++;
      });
      print("Inserted "+ countinsertion.toString() + " elements");
      _showSnackbar("নতুন " + countinsertion.toString() + "  টি প্রশ্ন যোগ হয়েছে!");
    } catch (_) {
      print(_);
      _showSnackbar("ইন্টারনেট সংযোগ চালু করুন।");
    }
    _loadDB();
  }
  _loadDB() async{
    await Future.delayed(Duration(seconds: 1)); // THIS LITLE LINE!!!
    var newquestions = await _questionHelper.getAllQuestion();
    setState(() {
      questions = newquestions;
      isLoading = false;
    });
    if(questions.length == 0) {
      _getSynced();
      _showSnackbar("সার্ভারের সাথে তথ্য Sync হচ্ছে...");
    }
  }

  @override
  void initState() {
    super.initState();
    _questionHelper = QuestionHelper();
    isLoading = true;
    _loadDB();
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
            icon: Icon(Icons.sync), 
            onPressed: () async{
              _getSynced();
            },
            tooltip: "সার্ভারের সাথে Sync করুন",
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
        Visibility(
          visible: isLoading,
          child: Column(children: <Widget>[
            LinearProgressIndicator(backgroundColor: Colors.black12),
            Text(countinsertion.toString()),
          ]),
        ),
        Expanded(
          child: ListView.builder(
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
          ),
        ),
      ],),
    ),
    );
  }
}