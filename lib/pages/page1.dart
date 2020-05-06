import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../globals.dart';

class PageOne extends StatefulWidget {
  var data;
  PageOne(this.data);
  @override
  _PageOneState createState() => _PageOneState(this.data);
}

class _PageOneState extends State<PageOne> {
  var data;
  _PageOneState(this.data);
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

  _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String spname = (prefs.getString('userName') ?? 'N/A');
    String spdesg = (prefs.getString('userDesig') ?? 'N/A');
    String sporg  = (prefs.getString('userOrg') ?? 'N/A');
    setState(() {
      userName = spname;
      userDesig = spdesg;
      userOrg = sporg;

      userNameController.text = userName;
      userDesigController.text = userDesig;
      userOrgController.text = userOrg;

    });
  }

  final userNameController = TextEditingController();
  final userDesigController = TextEditingController();
  final userOrgController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              SharedPreferences savestngs = await SharedPreferences.getInstance();
              setState(() {
                savestngs.setString('userName', userNameController.text);
                savestngs.setString('userDesig', userDesigController.text);
                savestngs.setString('userOrg', userOrgController.text);
              });
              _showToast("Settings saved!");
              Navigator.pop(context, [userNameController.text, userDesigController.text, userOrgController.text]);
            },
            tooltip: "Save",
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 5,),
        Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: userNameController,
              decoration: InputDecoration(
                hintText: "Name",
              ),
              onChanged: (String str) {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: userDesigController,
              decoration: InputDecoration(
                hintText: "Designation",
              ),
              onChanged: (String str) {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: userOrgController,
              decoration: InputDecoration(
                hintText: "Organization",
              ),
              onChanged: (String str) {},
            ),
          ),
        ],),
      ],)
    );
  }
}
