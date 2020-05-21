import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
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

  bool isOsSwitched = true;
  _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String spname = (prefs.getString('userName') ?? 'N/A');
    String spdesg = (prefs.getString('userDesig') ?? 'N/A');
    String sporg  = (prefs.getString('userOrg') ?? 'N/A');
    bool isosswitched  = (prefs.getBool('isOsSwitched') ?? true);
    setState(() {
      userName = spname;
      userDesig = spdesg;
      userOrg = sporg;
      isOsSwitched = isosswitched;

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
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Padding(padding: EdgeInsets.only(right: 10, left: 10), child: Text("ব্যবহারকারীর নাম", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green[800]),),),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: TextField(
              controller: userNameController,
              decoration: InputDecoration(
                labelText: "ব্যবহারকারীর নাম",
              ),
              onChanged: (String str) {},
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("নোটিফিকেশন সেটিংস", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green[800]),),
                        Text("নোটিফিকেশনে প্রশ্ন/ উত্তর পাঠানো পরিষেবা"),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Switch(
                    value: isOsSwitched,
                    onChanged: (value) async{
                      SharedPreferences sasetosstatus = await SharedPreferences.getInstance();
                      setState(() {
                        sasetosstatus.setBool('isOsSwitched', value);
                        isOsSwitched = value;
                      });
                      OneSignal.shared.setSubscription(isOsSwitched);
                      print(isOsSwitched);
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ),
              ]
            ),
          ),
        ],),
      ],)
    );
  }
}
