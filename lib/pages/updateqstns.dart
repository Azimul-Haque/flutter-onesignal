import 'package:flutter/material.dart';
import '../globals.dart';

class UpdateQstnPage extends StatefulWidget {
  @override
  _UpdateQstnPageState createState() => _UpdateQstnPageState();
}

class _UpdateQstnPageState extends State<UpdateQstnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("নোটিফিকেশনে প্রাপ্ত আপডেট"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              Navigator.pop(context);
            },
            tooltip: "ঠিক আছে",
          ),
        ],
        flexibleSpace: appBarStyle(),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(top: 15, right: 15, bottom: 7.5, left: 15),
              child: Text("প্রশ্নের আপডেটটি পেতে নিচের বাটনে ক্লিক করুন"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 30, bottom: 10, left: 30),
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.cloud_download, color: Colors.white,),
                    SizedBox(width: 15),
                    Text("আপডেট করুন", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                color: Colors.green,
                onPressed: () {
                  
                },
              ),
            ),
          ],
        ),
      ],)
    );
  }
}