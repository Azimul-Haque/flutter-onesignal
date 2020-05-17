import 'package:flutter/material.dart';

class ConstituionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সংবিধান"),
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
      body: ListView(children: <Widget>[
        SizedBox(height: 5,),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.open_in_new)),
            title: Text("প্রথম ভাগ"),
            subtitle: Text("প্রজাতন্ত্র"),
            // trailing: listPopUpMenu(questions[index]),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(241, 248, 233, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.open_in_new)),
            title: Text("দ্বিতীয় ভাগ রাষ্ট্র"),
            subtitle: Text("পরিচালনার মূলনীতি"),
            // trailing: listPopUpMenu(questions[index]),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(220, 237, 200, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.open_in_new)),
            title: Text("তৃতীয় ভাগ"),
            subtitle: Text("মৌলিক অধিকার"),
            // trailing: listPopUpMenu(questions[index]),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(197, 225, 165, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.open_in_new)),
            title: Text("পঞ্চম ভাগ"),
            subtitle: Text("আইনসভা"),
            // trailing: listPopUpMenu(questions[index]),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(174, 213, 129, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.open_in_new)),
            title: Text("চতুর্থ ভাগ"),
            subtitle: Text("নির্বাহী বিভাগ"),
            // trailing: listPopUpMenu(questions[index]),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(156, 204, 101, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        SizedBox(height: 5,),
      ],)
    );
  }
}