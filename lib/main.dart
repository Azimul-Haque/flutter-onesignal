import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;
import 'package:project1/QuestionsModel.dart';

import 'package:project1/pages/constitution.dart';
import 'package:project1/pages/qstnandans.dart';
import 'package:project1/pages/form.dart';
import 'package:project1/pages/notification.dart';

import 'package:project1/pages/page1.dart';

import 'globals.dart';

void main() {
  var materialApp = MaterialApp(
    title: 'BCS সংবিধান',
    theme: ThemeData(
      primarySwatch: Colors.green,
      fontFamily: 'Kalpurush',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/formpage': (context) => FormPage(),
      '/constitution': (context) => ConstituionPage(),
      '/qstnanser': (context) => QuestionAnswerPage(),
    },
  );
  return runApp(materialApp);
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _longText = "গান শুনতে যে আমার ভালো লাগে এটা বুঝতে পারি প্রথম আমি ক্লাস সিক্স বা সেভেনে। এর আগে গান শোনা বলতে যতটুকু মনে আছে তা হচ্ছে, আমাদের নেকমরদের বাসার সামনের জুতার দোকানগুলোতে বাজানো গানগুলো। অর্থাৎ, সে দোকানি ভাইদের গান শোনার অভিরুচিই ছিল পরোক্ষভাবে আমার গান শোনার 'টেস্ট'। কিছু গান শোনা হতো বাসার বেশ পেছনে তেলের মিল থেকে; হিন্দিতে বাজানো গানগুলো। ভরদুপুরে হয়তো ঘুমানোর জন্য শুয়েছি, ঘুম আসছে না।";
  String _shortText = "হারিয়ে গিয়েছি এইতো জরুরি খবর";
  int count = 0;
  final GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  GlobalKey <RefreshIndicatorState> refreshKey = GlobalKey <RefreshIndicatorState>();
  List people = [];
  List posts = [];
  List unfilteredPosts = [];
  QuestionHelper _questionHelper;

  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds: 2));
    this._getPosts();
    this._showSnackbar("তথ্য হালনাগাদ হয়েছে!");
    return null;
  }

  Future<String> loadJsonData() async {
    var jsonDataText = await rootBundle.loadString("assets/data.json");
    setState(() {
      people = json.decode(jsonDataText);
    });
    return 'success';
  }

  Future<bool> _getPosts() async {
    String serviceURL = "http://192.168.43.81:8000/broadcast"; // http://192.168.43.81:8000/broadcast
    var jsonDataPosts = await http.get(serviceURL);
    setState(() {
      posts = json.decode(jsonDataPosts.body.toString());
    });
    this.unfilteredPosts = posts;
    return true;
  }
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }

  searchData(String str) {
    var strExist = str.length > 0 ? true : false;
    if(strExist) {
      var filterData = [];
      for(var i=0; i<this.unfilteredPosts.length; i++) {
        if(unfilteredPosts[i]['title'].contains(str) || unfilteredPosts[i]['body'].contains(str)) {
          filterData.add(unfilteredPosts[i]);
        }
      }
      setState(() {
        this.posts = filterData;
      });
    } else {
      setState(() {
        this.posts = this.unfilteredPosts;
      });
    }
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
    });
  }

  @override
  void initState() {
    // super.initState();
    this._loadUserData();
    this._getPosts();
    this.configOneSignal();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _globalKey,
      appBar: AppBar(
        elevation: 0,
        title: Text('BCS সংবিধান'),
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [
                Colors.green[800],
                Colors.lightGreen,
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        actions: <Widget>[
          PopupMenuButton(
            offset: Offset(0, 60),
            onSelected: (value) async{
              switch (value) {
                case 'addqstn':
                  Navigator.pushNamed(context, '/formpage');
                  break;
                case 'rate':
                  // if (await canLaunch("https://orbachinujbuk.com")) {
                  //   await launch("https://orbachinujbuk.com");
                  // } else {
                  //   throw 'Could not launch!';
                  // }
                  break;
                case 'website':
                  // if (await canLaunch("https://orbachinujbuk.com")) {
                  //   await launch("https://orbachinujbuk.com");
                  // } else {
                  //   throw 'Could not launch!';
                  // }
                  break;
                default:
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "addqstn", 
                  child: Row(children: <Widget>[Icon(Icons.library_add, color: Colors.black87,), SizedBox(width: 10,), Text("প্রশ্ন যোগ করুন")],)
                ,),
                PopupMenuItem(
                  value: "rate", 
                  child: Row(children: <Widget>[Icon(Icons.star, color: Colors.black87,), SizedBox(width: 10,), Text("আমাদের রেটিং দিন")],)
                ,),
                PopupMenuItem(
                  value: "website",
                  child: Row(children: <Widget>[Icon(Icons.open_in_browser, color: Colors.black87,), SizedBox(width: 10,), Text("ওয়েবসাইট দেখুন")],),
                ),
              ];
            },
          )
        ],
      ),
      drawer: _homeDrawer(userName, userDesig, userOrg),
      body: Column(children: <Widget>[
        Stack(children: <Widget>[
          Container(
            height:120, width: double.infinity, 
            child: Column(children: <Widget>[
              Container(
                height:90, width: double.infinity, 
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [
                      Colors.green[800],
                      Colors.lightGreen,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  // boxShadow: [BoxShadow(
                  //   color: Colors.grey[350],
                  //   blurRadius: 10.0, // has the effect of softening the shadow
                  //   spreadRadius: 5.0, // has the effect of extending the shadow
                  //   offset: Offset(
                  //     5.0, // horizontal, move right 10
                  //     5.0, // vertical, move down 10
                  //   ),
                  // )],
                ),
              ),
            ],),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 125,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _scrollCard("prostabona.png", "১ টি", 'প্রস্তাবনা'),
                  _scrollCard("agreement.png", "১১ টি", 'ভাগ'),
                  _scrollCard("law.png", "১৫৩ টি", 'অনুচ্ছেদ'),
                  _scrollCard("seal.png", "৭ টি", 'তফসিল'),
                  _scrollCard("search.png", "১৭ টি", 'সংশোধনী'),
                ],
              ),
            ), 
          ),
        ],),
        Expanded(
          child: ListView(children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 10, bottom: 2.5, right: 2.5),
                    child: _homeCard("constitution.png", "সংবিধান", "পুরো সংবিধান", '/constitution'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 2.5, bottom: 2.5, right: 10),
                    child: _homeCard("qstnandans.png", "প্রশ্নোত্তর", "সংবিধান থেকে প্রশ্ন ও উত্তর", '/qstnanser'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 2.5, left: 10, bottom: 2.5, right: 2.5),
                    child: _homeCard("history.png", "ইতিহাস", "সংবিধানের ইতিহাস", 'N/A'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 2.5, left: 2.5, bottom: 2.5, right: 10),
                    child: _homeCard("exam.png", "পরীক্ষা (আসছে)", "সংবিধান থেকে পরীক্ষা দিন", 'N/A'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 2.5, left: 10, bottom: 10, right: 2.5),
                    child: _homeCard("amendment.png", "সংশোধনী", "সংবিধানের সংশোধনীসমূহ", 'N/A'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 2.5, left: 2.5, bottom: 10, right: 10),
                    child: _homeCard("qstnbank.png", "প্রশ্নব্যাংক (আসছে)", "বিসিএসে সংবিধানের প্রশ্নাবলী", 'N/A'),
                  ),
                ),
              ],
            ),        
          ]),
        ),
      ]),
    );
  }

  Widget _rowCell() {
    return Row(children: <Widget>[
      Container(
        margin: EdgeInsets.all(5.0),
        height: 100, width: 200, 
        // decoration: BoxDecoration(color: Colors.red),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(
            color: Colors.grey[350],
            blurRadius: 3.0, // has the effect of softening the shadow
            spreadRadius: 2.0, // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )],
        ),
        child: Icon(Icons.alarm, color: Colors.white,),
      ),
      SizedBox(height: 20,),
    ],);
  }

  Widget _homeDrawer(String username, String userdesig, String userorg) {
    return Drawer(
      child: ListView(children: <Widget>[
        Stack(children: <Widget>[
          Image.asset("assets/images/drawer.jpg"),
          Positioned(
            left: 30,
            bottom: 65,
            child: Container(
              height: 70, 
              width: 70,
              decoration: BoxDecoration(boxShadow: [_boxShadow1()], borderRadius: BorderRadius.circular(50),),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset("assets/images/test1.jpg"),
              ),
            ), 
          ),
          Positioned(
            left: 30,
            bottom: 45,
            child: Text(username, style: TextStyle(color: Colors.white, fontSize: 15)),
          ),
          Positioned(
            left: 30,
            bottom: 30,
            child: Text(userdesig + ", " + userorg, style: TextStyle(color: Colors.white70, fontSize: 12)),
          ),
          Positioned(
            right: 3,
            bottom: 3,
            child: Text("Version: 1.0.5", style: TextStyle(color: Colors.white60, fontSize: 11)),
          ),
        ],),
        SizedBox(height: 10,),
        ListTile(
          leading: Icon(Icons.home, color: Colors.black87,),
          title: Text("নীড়"),
          onTap: (){
            Navigator.pop(context); // this line closes the drawer
          },
        ),
        ListTile(
          leading: Icon(Icons.add_to_photos, color: Colors.black87,),
          title: Text("প্রশ্ন যোগ করুন"),
          onTap: (){
            Navigator.pop(context);
            // Route route = MaterialPageRoute(builder: (context) => NotificationPage(["1", "2"]));
            // Navigator.push(context, route);
            Navigator.pushNamed(context, '/formpage');
          },
        ),
        Divider(color: Colors.black26,),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.black87,),
          title: Text("সেটিংস"),
          onTap: (){
            Navigator.pop(context);
            Route route = MaterialPageRoute(builder: (context) => PageOne(null));
            Navigator.push(context, route).then((value) {
              setState(() {
                userName = value[0];
                userDesig = value[1];
                userOrg = value[2];
              });
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.info, color: Colors.black87,),
          title: Text("আমাদের সম্পর্কে"),
          onTap: (){
            Navigator.pop(context);
            _showDialog();
          },
        ),
      ],)
    );
  }
  
  Widget _homeCard(String image, String title, String takenby, String routename) {
    return Card(
      child: Stack(
        children: <Widget>[
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                  child: Image.asset("assets/images/" + image),
              ),
              Padding(
                padding: EdgeInsets.all(7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(takenby, style: TextStyle(color: Colors.blueGrey, fontSize: 11.5, height: 1.0),),
                  ],
                )
              )
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  if(routename != 'N/A') {
                    Navigator.pushNamed(context, routename);
                  } else {
        
                  }
                },
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 2,
    );
  }
  Widget _scrollCard(String iconname, String title, String subtitle) {
    return Container(
      height: 110, 
      width: 110,
      child: Card(
        child: Stack(
          children: <Widget>[
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 9, width: double.infinity,),
                Image.asset("assets/images/" + iconname, height: 45, width: 45, alignment: Alignment.center,),
                SizedBox(height: 8, width: double.infinity,),
                Text(title, style: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Kalpurush', height: 1,), textAlign: TextAlign.center,),
                Text(subtitle, style: TextStyle(color: Colors.blueGrey, fontSize: 13, fontFamily: 'Kalpurush', height: 1.1,), textAlign: TextAlign.center,),
              ],
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 7,
        color: Colors.white,
      ),
    );
  }

  BoxShadow _boxShadow1() {
    return BoxShadow(
      color: Colors.grey[700],
      blurRadius: 10.0, // has the effect of softening the shadow
      spreadRadius: 1.0, // has the effect of extending the shadow
      offset: Offset(
        3.0, // horizontal, move right 10
        3.0, // vertical, move down 10
      ),
    );
  }

  void configOneSignal() {
    OneSignal.shared.init("5fd2b20d-d0d7-496d-b6fc-d211fef5e34e");
    OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);
    OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      Route route = MaterialPageRoute(builder: (context) => NotificationPage([result.notification.payload.title, result.notification.payload.additionalData.values.first]));
      Navigator.push(context, route);
    });
  }

  showAlertDialog(BuildContext context, String msg) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text(msg),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _showDialog() {
    slideDialog.showSlideDialog(
      context: context,
      child: Text("Hello World"),
      // barrierColor: Colors.white.withOpacity(0.7),
      // pillColor: Colors.red,
      // backgroundColor: Colors.yellow,
    );
  }
}