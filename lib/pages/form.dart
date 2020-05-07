import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Page")),
      body: ListView(children: <Widget>[
        SizedBox(height: 5,),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                
                children: <Widget>[
                  Text("Ekhane form hobe", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              )
            )
          ],
        ),
        RaisedButton(
          child: Text("Go Back"),
          color: Colors.lightBlue,
          hoverElevation: 5,
          onPressed: () {
            setState(() {
              Navigator.pop(context);
              _showToast("ফিরে যাওয়া হলো!");
            });
          },
        ),
      ],)
    );
  }
}