import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageOne extends StatefulWidget {
  var m;
  PageOne(this.m);
  @override
  _PageOneState createState() => _PageOneState(this.m);
}

class _PageOneState extends State<PageOne> {
  var m;
  _PageOneState(this.m);
  final GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }

  _showToast(String textToast) {
    Fluttertoast.showToast(
      msg: textToast,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: ListView(children: <Widget>[
        SizedBox(height: 5,),
        Text(m),
        SizedBox(height: 5,),
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
