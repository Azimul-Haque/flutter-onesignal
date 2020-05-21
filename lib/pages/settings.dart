import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../globals.dart';

class SettingsPage extends StatefulWidget {
  var data;
  SettingsPage(this.data);
  @override
  _SettingsPageState createState() => _SettingsPageState(this.data);
}

class _SettingsPageState extends State<SettingsPage> {
  var data;
  _SettingsPageState(this.data);
  final GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();

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
        title: Text('সেটিংস'),
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
            tooltip: "দাখিল করুন",
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 10,),
        Text("সেটিংস", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: userNameController,
              decoration: InputDecoration(
                labelText: "ব্যবহারকারীর নাম",
              ),
              onChanged: (String str) {},
            ),
          ),
          SizedBox(height: 5,),
        ],),
      ],)
    );
  }
}
