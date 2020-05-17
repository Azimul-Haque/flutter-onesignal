import 'package:flutter/material.dart';

class ConstituionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সংবিধান"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              Navigator.pop(context);
            },
            tooltip: "Ok",
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 5,),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.open_in_new)),
            title: Text("প্রথম ভাগ "),
            subtitle: Text("প্রজাতন্ত্র"),
            // trailing: listPopUpMenu(questions[index]),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Colors.amber,
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
          color: Colors.green,
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.open_in_new)),
            title: Text("প্রথম ভাগ "),
            subtitle: Text("প্রজাতন্ত্র"),
            // trailing: listPopUpMenu(questions[index]),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Colors.blue,
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        SizedBox(height: 5,),
      ],)
    );
  }
}