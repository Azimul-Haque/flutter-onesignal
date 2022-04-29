import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;
import 'package:flutter_share/flutter_share.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:http/http.dart' as http;
// import 'package:project1/QuestionsModel.dart';

import 'package:project1/pages/constitution.dart';
import 'package:project1/pages/qstnandans.dart';
import 'package:project1/pages/history.dart';
import 'package:project1/pages/exam.dart';
import 'package:project1/pages/ammendments.dart';
import 'package:project1/pages/exams.dart';
import 'package:project1/pages/form.dart';
import 'package:project1/pages/favorites.dart';
import 'package:project1/pages/notification.dart';
import 'package:project1/pages/updateqstns.dart';

import 'package:project1/pages/settings.dart';
import 'package:project1/pages/contact.dart';
import 'package:url_launcher/url_launcher.dart';
import 'globals.dart';

void main() {
  var materialApp = MaterialApp(
    title: 'সংবিধান সারথি',
    theme: ThemeData(
      primarySwatch: Colors.green,
      fontFamily: 'Kalpurush',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/formpage': (context) => FormPage(),
      '/favorites': (context) => FavoritesPage(),
      '/qstnanswer': (context) => QuestionAnswerPage(),
      '/constitution': (context) => ConstituionPage(),
      '/history': (context) => HistoryPage(),
      '/exam': (context) => ExamPage(),
      '/ammendments': (context) => AmmendmentsPage(),
      '/exams': (context) => ExamsPage(),
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
  int count = 0;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  GlobalKey<RefreshIndicatorState> refreshKey =
      GlobalKey<RefreshIndicatorState>();
  // List people = [];
  // List posts = [];
  // List unfilteredPosts = [];
  bool updateVisibilityTag = false;
  String versionFromServer = "";

  Future<void> share() async {
    await FlutterShare.share(
        title: 'শেয়ার করুন',
        text: 'সংবিধান সারথি',
        linkUrl:
            'https://play.google.com/store/apps/details?id=com.orbachinujbuk.bcs_constitution',
        chooserTitle: 'অ্যাপটি শেয়ার করুন!');
  }

  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(
      content: Text(textForSnackbar),
    );
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }

  // Future<bool> _getPosts() async {
  //   String serviceURL = "http://192.168.43.81:8000/broadcast"; // http://192.168.43.81:8000/broadcast
  //   var jsonDataPosts = await http.get(serviceURL);
  //   setState(() {
  //     posts = json.decode(jsonDataPosts.body.toString());
  //   });
  //   this.unfilteredPosts = posts;
  //   return true;
  // }
  // searchData(String str) {
  //   var strExist = str.length > 0 ? true : false;
  //   if(strExist) {
  //     var filterData = [];
  //     for(var i=0; i<this.unfilteredPosts.length; i++) {
  //       if(unfilteredPosts[i]['title'].contains(str) || unfilteredPosts[i]['body'].contains(str)) {
  //         filterData.add(unfilteredPosts[i]);
  //       }
  //     }
  //     setState(() {
  //       this.posts = filterData;
  //     });
  //   } else {
  //     setState(() {
  //       this.posts = this.unfilteredPosts;
  //     });
  //   }
  // }
  var userName = '';
  var userDesig = '';
  var userOrg = '';
  _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String spname = (prefs.getString('userName') ?? 'N/A');
    String spdesg = (prefs.getString('userDesig') ?? 'N/A');
    String sporg = (prefs.getString('userOrg') ?? 'N/A');
    setState(() {
      userName = spname;
      userDesig = spdesg;
      userOrg = sporg;
    });
  }

  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
    String serviceUR = "https://killa.com.bd/broadcast/version";
    var versionData = await http.get(serviceUR);
    versionFromServer = json.decode(versionData.body.toString());
    // print(versionFromServer);
    if (versionFromServer != _packageInfo.version) {
      setState(() {
        updateVisibilityTag = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    this._loadUserData();
    this.configOneSignal();
    _initPackageInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        elevation: 0,
        title: Text('সংবিধান সারথি'),
        flexibleSpace: appBarStyle(),
        actions: <Widget>[
          PopupMenuButton(
            offset: Offset(0, 60),
            onSelected: (value) async {
              switch (value) {
                case 'addqstn':
                  Navigator.pushNamed(context, '/formpage');
                  break;
                case 'rate':
                  if (await canLaunch(
                      "https://play.google.com/store/apps/details?id=com.orbachinujbuk.bcs_constitution")) {
                    await launch(
                        "https://play.google.com/store/apps/details?id=com.orbachinujbuk.bcs_constitution");
                  } else {
                    throw 'Could not launch!';
                  }
                  break;
                case 'website':
                  // if (await canLaunch("https://orbachinujbuk.com")) {
                  //   await launch("https://orbachinujbuk.com");
                  // } else {
                  //   throw 'Could not launch!';
                  // }
                  _showDialog();
                  break;
                default:
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "addqstn",
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.library_add,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("প্রশ্ন যোগ করুন")
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "rate",
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("আমাদের রেটিং দিন")
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "website",
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.code,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("নির্মাতা")
                    ],
                  ),
                ),
              ];
            },
          )
        ],
      ),
      drawer: _homeDrawer(userName, userDesig, userOrg),
      body: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 120,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    width: double.infinity,
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
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
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
                ],
              ),
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
          ],
        ),
        updateVisibilityTag
            ? Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 0, left: 10, bottom: 0, right: 10),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child:
                                Icon(Icons.new_releases, color: Colors.white),
                            backgroundColor: Color.fromRGBO(255, 165, 0, 1.0),
                          ),
                          title: BlinkText(
                            'একটি নতুন আপডেট আছে',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                            endColor: Colors.orange,
                          ),
                          subtitle: Text("আপডেট (" +
                              versionFromServer +
                              ") পেতে ক্লিক করুন!"),
                          trailing: Icon(Icons.update),
                          onTap: () async {
                            if (await canLaunch(
                                    "https://play.google.com/store/apps/details?id=com.orbachinujbuk.bcs_constitution") !=
                                null) {
                              await launch(
                                  "https://play.google.com/store/apps/details?id=com.orbachinujbuk.bcs_constitution");
                            } else {
                              // throw 'Could not launch!';
                            }
                          },
                        ),
                        // color: Color.fromRGBO(241, 248, 233, 1.0),
                        // margin:
                        //     EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                      ),
                    ),
                  ),
                ],
              )
            : new Container(),
        Expanded(
          child: ListView(children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, bottom: 2.5, right: 2.5),
                    child: _homeCard("constitution.png", "সংবিধান",
                        "পুরো সংবিধান", '/constitution'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 10, left: 2.5, bottom: 2.5, right: 10),
                    child: _homeCard("qstnandans.png", "প্রশ্নোত্তর",
                        "সংবিধান থেকে প্রশ্ন ও উত্তর", '/qstnanswer'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 2.5, left: 10, bottom: 2.5, right: 2.5),
                    child: _homeCard("history.png", "ইতিহাস",
                        "সংবিধানের ইতিহাস", '/history'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 2.5, left: 2.5, bottom: 2.5, right: 10),
                    child: _homeCard("exam.png", "পরীক্ষা",
                        "সংবিধান থেকে পরীক্ষা দিন", '/exam'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 2.5, left: 10, bottom: 10, right: 2.5),
                    child: _homeCard("amendment.png", "সংশোধনী",
                        "সংবিধানের সংশোধনীসমূহ", '/ammendments'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 2.5, left: 2.5, bottom: 10, right: 10),
                    child: _homeCard("qstnbank.png", "ফলাফলসমূহ",
                        "আপনার পুর্ববর্তী পরীক্ষাসমূহ", '/exams'),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ]),
    );
  }

  Widget _homeDrawer(String username, String userdesig, String userorg) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset("assets/images/drawer.jpg"),
            Positioned(
              left: 30,
              bottom: 70,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  boxShadow: [_boxShadow1()],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset("assets/images/withouttext.png"),
                ),
              ),
            ),
            Positioned(
              left: 30,
              bottom: 40,
              child: Text('সংবিধান সারথি',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Positioned(
              left: 30,
              bottom: 25,
              child: Text(username,
                  style: TextStyle(color: Colors.white70, fontSize: 13)),
            ),
            Positioned(
              right: 3,
              bottom: 3,
              child: Text("Version: " + _packageInfo.version,
                  style: TextStyle(color: Colors.white60, fontSize: 11)),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.black87,
          ),
          title: Text("নীড়"),
          onTap: () {
            Navigator.pop(context); // this line closes the drawer
          },
        ),
        ListTile(
          leading: Icon(
            Icons.add_to_photos,
            color: Colors.black87,
          ),
          title: Text("প্রশ্ন যোগ করুন"),
          onTap: () {
            Navigator.pop(context);
            // Route route = MaterialPageRoute(builder: (context) => NotificationPage(["1", "2"]));
            // Navigator.push(context, route);
            Navigator.pushNamed(context, '/formpage');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.favorite,
            color: Colors.black87,
          ),
          title: Text("প্রিয় তালিকা"),
          onTap: () {
            Navigator.pop(context);
            // Route route = MaterialPageRoute(builder: (context) => NotificationPage(["1", "2"]));
            // Navigator.push(context, route);
            Navigator.pushNamed(context, '/favorites');
          },
        ),
        Divider(
          color: Colors.black26,
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.black87,
          ),
          title: Text("সেটিংস"),
          onTap: () {
            Navigator.pop(context);
            Route route =
                MaterialPageRoute(builder: (context) => SettingsPage());
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
          leading: Icon(
            Icons.mail,
            color: Colors.black87,
          ),
          title: Text("মতামত জানান"),
          onTap: () {
            Navigator.pop(context);
            Route route =
                MaterialPageRoute(builder: (context) => ContactPage(userName));
            Navigator.push(context, route);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.info,
            color: Colors.black87,
          ),
          title: Text("আমাদের সম্পর্কে"),
          onTap: () {
            Navigator.pop(context);
            _showDialog();
          },
        ),
        ListTile(
          leading: Icon(
            Icons.share,
            color: Colors.black87,
          ),
          title: Text("শেয়ার করুন"),
          onTap: () {
            Navigator.pop(context);
            share();
            // final RenderBox box = context.findRenderObject();
            // Share.share("https://orbachinujbuk.com/",
            //   subject: "অ্যাপটি শেয়ার করুন!",
            //   sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size
            // );
            // Share.share('check out my website https://example.com', subject: 'Look what I made!');
          },
        ),
      ],
    ));
  }

  Widget _homeCard(
      String image, String title, String takenby, String routename) {
    return Card(
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset("assets/images/" + image),
              ),
              Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        takenby,
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 11.5,
                            height: 1.0),
                      ),
                    ],
                  ))
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  if (routename != 'N/A') {
                    Navigator.pushNamed(context, routename);
                  } else {}
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
                SizedBox(
                  height: 9,
                  width: double.infinity,
                ),
                Image.asset(
                  "assets/images/" + iconname,
                  height: 45,
                  width: 45,
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 8,
                  width: double.infinity,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kalpurush',
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontFamily: 'Kalpurush',
                    height: 1.1,
                  ),
                  textAlign: TextAlign.center,
                ),
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

  showAlertDialog(BuildContext context, String msg) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {},
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
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/android-icon.png",
              width: 60,
              height: 60,
            ),
            SizedBox(
              height: 10,
            ),
            Text('সংবিধান সারথি',
                style: TextStyle(color: Colors.green[800], fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text('নির্মাতা তথ্য'),
            SizedBox(
              height: 5,
            ),
            // Text(
            //   'এ. এইচ. এম. আজিমুল হক (রিফাত)',
            // ),
            TextButton(
              onPressed: () async {
                var url =
                    'fb://facewebmodal/f?href=https://www.facebook.com/orbachinujbuk';
                if (await canLaunch(url) != null) {
                  // await launch("https://www.facebook.com/orbachinujbuk");
                  await launch(
                    url,
                    universalLinksOnly: true,
                  );
                } else {
                  throw 'Could not launch!';
                }
              },
              child: Text(
                'এ. এইচ. এম. আজিমুল হক (রিফাত)',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Text('প্রশাসন ক্যাডার, মেধাক্রমঃ ৫ম, ৪০ তম বিসিএস'),
            SizedBox(
              height: 5,
            ),
            Text('সহকারী পরিচালক, প্রধানমন্ত্রীর কার্যালয়'),
            SizedBox(
              height: 50,
            ),
            Text('একটি Innova Tech Inc. পণ্য'),
            SizedBox(
              height: 10,
            ),
            Text("Version: " + _packageInfo.version,
                style: TextStyle(color: Colors.black54, fontSize: 13)),
          ],
        ),
      ),
      // barrierColor: Colors.black.withOpacity(0.7),
      pillColor: Colors.green,
      // backgroundColor: Colors.yellow,
    );
  }

  // onesignal configuration
  void configOneSignal() {
    OneSignal.shared.init("d5202a9d-fc79-4e35-990c-bfc18333fafa");
    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);
    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      if (result.notification.payload.additionalData.values.first == 'update') {
        Route route = MaterialPageRoute(builder: (context) => UpdateQstnPage());
        Navigator.push(context, route);
      } else {
        Route route = MaterialPageRoute(
            builder: (context) => NotificationPage([
                  result.notification.payload.title,
                  result.notification.payload.additionalData.values.first
                ]));
        Navigator.push(context, route);
      }
    });
  }
}
