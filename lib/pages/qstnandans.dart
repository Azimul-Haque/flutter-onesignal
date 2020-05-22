import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:project1/models/QuestionsModel.dart';
import '../globals.dart';
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

  var qstnReportController = TextEditingController();

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
  _getSynced(int lastId) async {
    _showSnackbar("সার্ভারের সাথে তথ্য Sync হচ্ছে...");
    setState(() {
      isLoading = true;
    });
    try {
      int countinsertion = 0;
      String serviceURL = "https://killa.com.bd/broadcast/rifat2020/" + lastId.toString(); // https://jsonplaceholder.typicode.com/posts
      var jsonDataQuestions = await http.get(serviceURL);
      setState(() {
        syncquestions = json.decode(jsonDataQuestions.body.toString());
      });
      syncquestions.forEach((element) {
        // print(element.toString());
        currentQuestion = QuestionsModel(question: element["question"], answer: element["answer"], incanswer: element["incanswer"]);
        _questionHelper.insertQuestion(currentQuestion);
        countinsertion++;
      });
      // print("Inserted "+ syncquestions.length.toString() + " elements");
      if(countinsertion == 0) {
        _showSnackbar("সার্ভারের সর্বশেষ সকল প্রশ্ন ইতোমধ্যে উপস্থিত!");
      } else {
        _showSnackbar("নতুন " + countinsertion.toString() + "  টি প্রশ্ন যোগ হয়েছে! (" + (jsonDataQuestions.contentLength/1000).ceil().toString() + "KB)");
      }
    } catch (_) {
      // print(_);
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
      _getSynced(questions.length);
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
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.sync), 
        //     onPressed: () async{
        //       _getSynced(questions.length);
        //     },
        //     tooltip: "সার্ভারের সাথে Sync করুন",
        //   ),
        // ],
        actions: <Widget>[
          PopupMenuButton(
            offset: Offset(0, 55),
            onSelected: (value) async{
              switch (value) {
                case 'sync':
                  _getSynced(questions.length);
                  break;
                case 'cleardb':
                  break;
                default:
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "sync", 
                  child: Row(children: <Widget>[Icon(Icons.sync, color: Colors.black87,), SizedBox(width: 10,), Text("সার্ভারের সাথে Sync করুন")],)
                ,),
                PopupMenuItem(
                  value: "cleardb", 
                  child: Row(children: <Widget>[Icon(Icons.delete_outline, color: Colors.black87,), SizedBox(width: 10,), Text("মুছে দিন")],)
                ,),
              ];
            },
          )
        ],
        flexibleSpace: appBarStyle(),
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
            child: LinearProgressIndicator(backgroundColor: Colors.black12),
          ),
          SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    // leading: CircleAvatar(child: Text(questions[index].question[0]),),
                    title: Text(questions[index].question),
                    subtitle: Text(questions[index].answer),
                    trailing:  listPopUpMenu(questions[index]),
                    // onTap: (){
                    //   // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
                    //   // Navigator.push(context, route);
                    //   // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
                    // },
                  ),
                  margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                  elevation: 2,
                );
              },
            ),
          ),
          SizedBox(height: 5,),
        ],),
      ),
    );
  }

  listPopUpMenu(QuestionsModel question) {
    return PopupMenuButton(
      offset: Offset(0, 40),
      onSelected: (value) async{
        switch (value) {
          case 'report':
            qstnReportController.clear();
            showReportDialog(question);
            break;
          case 'makefavorite':
            makeFavorite(question);
            break;
          case 'makeunfavorite':
            makeUnfavorite(question);
            break;
          default:
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: "report", 
            child: Row(children: <Widget>[Icon(Icons.report, color: Colors.black87,), SizedBox(width: 10,), Text("প্রশ্নটি রিপোর্ট করুন")],)
          ,),
          PopupMenuItem(
            value: (question.isfav == 0) ? "makefavorite" : "makeunfavorite", 
            child: 
              (question.isfav == 0)
              ? 
                Row(children: <Widget>[Icon(Icons.favorite_border, color: Colors.black87,), SizedBox(width: 10,), Text("প্রিয় তালিকায় যোগ করুন")],)
              :
                Row(children: <Widget>[Icon(Icons.remove_circle_outline, color: Colors.black87,), SizedBox(width: 10,), Text("প্রিয় তালিকা থেকে অপসারণ করুন")],)
          ,),
        ];
      },
    );
  }
  showReportDialog(QuestionsModel question) async{
    AlertDialog alert = AlertDialog(
      title: Center(child: Text('প্রশ্নটি রিপোর্ট করুন')),
      content: Container(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(question.question),
            Text(question.answer),
            TextField(
              controller: qstnReportController,
              decoration: InputDecoration(
                labelText: "ব্যাখ্যা/ মন্তব্য (ঐচ্ছিক)",
              ),
              onChanged: (String str) {},
            ),
          ],
        ),
      ),
      actions: <Widget>[
        RaisedButton(
          child: Text("রিপোর্ট করুন"),
          color: Colors.green,
          onPressed: () {
            handleReportSubmit(question);
          },
        ),
        RaisedButton(
          child: Text("ফিরে যান"),
          color: Colors.white,
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
  handleReportSubmit(QuestionsModel question) async{
    showLoadingDialog(context);
    var data = {
      'question': question.question,
      'answer': question.answer,
      'report': qstnReportController.text ?? 'N/A',
    };
    try {
      FocusScope.of(context).unfocus(); // hide the keyboard
      http.Response response = await http.post(
        'https://killa.com.bd/onesignal/report/question/api',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=utf-8',
          'Accept' : 'application/json',
        },
        body: jsonEncode(data),
      );
      // print(response.statusCode);
      if(response.statusCode == 200) {
        var body = json.decode(response.body);
        if(body["success"] == true) {
          // print(body);
          Navigator.of(context, rootNavigator: true).pop(); // close the loading dialog
          Navigator.of(context, rootNavigator: true).pop(); // close the popup dialogue
          this._showSnackbar('আপনার রিপোর্ট সার্ভারে পাঠানো হয়েছে। ধন্যবাদ!');
        }
      } else {
        Navigator.of(context, rootNavigator: true).pop();
        Navigator.of(context, rootNavigator: true).pop();
        _showSnackbar("সমস্যা হচ্ছে, আবার চেষ্টা করুন।");
      }
    } catch (_) {
      // print(_);
      Navigator.of(context, rootNavigator: true).pop();
      Navigator.of(context, rootNavigator: true).pop();
      _showSnackbar("ইন্টারনেট সংযোগ চালু করুন।");
    }
  }

  showLoadingDialog(BuildContext context) {
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

  void makeFavorite(QuestionsModel question) {
    _questionHelper.makeFav(question);
    _showSnackbar("প্রিয় তালিকায় যোগ করা হয়েছে!");
  }

  void makeUnfavorite(QuestionsModel question) {
    _questionHelper.makeUnfav(question);
    _showSnackbar("প্রিয় তালিকা থেকে অপসারণ করা হয়েছে!");
  }

}