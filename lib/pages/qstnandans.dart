import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:project1/pages/page2.dart';

class QuestionAnswerPage extends StatefulWidget {
  @override
  _QuestionAnswerPageState createState() => _QuestionAnswerPageState();
}

class _QuestionAnswerPageState extends State<QuestionAnswerPage> {
  final GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  GlobalKey <RefreshIndicatorState> refreshKey = GlobalKey <RefreshIndicatorState>();
  List posts = [];

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 2));
    this._getPosts();
    this._showSnackbar("তথ্য হালনাগাদ হয়েছে!");
    return null;
  }
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }
  Future<bool> _getPosts() async {
    String serviceURL = "https://jsonplaceholder.typicode.com/posts"; // http://192.168.43.81:8000/broadcast
    var jsonDataPosts = await http.get(serviceURL);
    setState(() {
      posts = json.decode(jsonDataPosts.body.toString());
    });
    return true;
  }

  @override
  void initState() {
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text(posts[index]["title"][0]),),
                  title: Text(posts[index]["title"].length > 30 ? posts[index]["title"].substring(0, 25) + "..." : posts[index]["title"]),
                  subtitle: Text("Tab to read more..."),
                  trailing: Icon(Icons.pageview),
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (context) => PageTwo(posts[index]));
                    Navigator.push(context, route);
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