import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:project1/pages/page1.dart';
import 'package:project1/pages/page2.dart';
import 'package:project1/pages/form.dart';

import 'globals.dart';

void main() {
  var materialApp = MaterialApp(
    title: 'BCS Charioteer New',
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
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
  List people = [];
  List posts = [];
  List unfilteredPosts = [];

  Future<String> loadJsonData() async {
    var jsonDataText = await rootBundle.loadString("assets/data.json");
    setState(() {
      people = json.decode(jsonDataText);
    });
    return 'success';
  }

  Future<bool> _getPosts() async {
    String serviceURL = "https://jsonplaceholder.typicode.com/posts"; // http://192.168.43.81:8000/broadcast
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

  _showToast(String textToast) {
    Fluttertoast.showToast(
      msg: textToast,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
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
    this._loadUserData();
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text('BCS Charioteer'),
        actions: <Widget>[
          PopupMenuButton(
            offset: Offset(0, 55),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: "rating", child: Row(children: <Widget>[Icon(Icons.star, color: Colors.black,), Text("Rate us")],),),
                PopupMenuItem(value: "website", child: Row(children: <Widget>[Icon(Icons.open_in_browser, color: Colors.black,), Text("View website")],),),
              ];
            },
          )
        ],
      ),
      drawer: _homeDrawer(userName, userDesig, userOrg),
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search from posts...",
            ),
            onChanged: (String str) {
              this.searchData(str);
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(child: Text(posts[index]["title"][0]),),
                title: Text(posts[index]["title"].length > 30 ? posts[index]["title"].substring(0, 25) + "..." : posts[index]["title"]),
                subtitle: Text("Tab to read more..."),
                trailing: Icon(Icons.pageview),
                onTap: (){
                  Route route = MaterialPageRoute(builder: (context) => PageTwo(posts[index]));
                  Navigator.push(context, route);
                },
              );
            },
          ),
        ),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => FormPage());
          Navigator.push(context, route);
        },
        tooltip: 'Open Form',
        child: Icon(Icons.add),
      )
      
        // ListView(children: <Widget>[
        // SizedBox(height: 5,),
        // RaisedButton(
        //   child: Text("তথ্য লোড করুন $count"),
        //   color: Colors.lightBlue,
        //   hoverElevation: 5,
        //   onPressed: () {
        //     setState(() {
        //       count++;
        //       _showSnackbar("লোড করা হচ্ছে...");
        //       // loadJsonData();
        //       _getPosts();
        //       _showSnackbar("জেসন ডাটা যোগ করা হয়েছে।");
        //     });
        //   },
        // ),
        // SizedBox(height: 5,),
        // RaisedButton(
        //   child: Text("তথ্য মুছে দিন"),
        //   onPressed: () {
        //     setState(() {
        //       _showToast("তথ্য মুছে দেওয়া হয়েছে!");
        //       posts = [];
        //     });
        //   },
        // ),
        // SizedBox(height: 10,),
        // Container(
        //   height: 300,
        //   child: ListView.builder(
        //     itemCount: people.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return ListTile(
        //         leading: CircleAvatar(child: Text(people[index]["name"][0]),),
        //         title: Text(people[index]["name"]),
        //         subtitle: Text(people[index]["email"]),
        //         onTap: (){
        //           Route route = MaterialPageRoute(builder: (context) => PageOne(people[index]));
        //           Navigator.push(context, route);
        //         },
        //       );
        //     },
        //   ),
        // ),
        // SizedBox(height: 5,),
        // Container(
        //   height: MediaQuery.of(context).size.height - 100,
        //   child: ListView.builder(
        //     itemCount: posts.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return ListTile(
        //         leading: CircleAvatar(child: Text(posts[index]["title"][0]),),
        //         title: Text(posts[index]["title"].length > 30 ? posts[index]["title"].substring(0, 25) + "..." : posts[index]["title"]),
        //         subtitle: Text("Tab to read more..."),
        //         trailing: Icon(Icons.pageview),
        //         onTap: (){
        //           Route route = MaterialPageRoute(builder: (context) => PageTwo(posts[index]));
        //           Navigator.push(context, route);
        //         },
        //       );
        //     },
        //   ),
        // ),

        // SizedBox(height: 5,),

        // _homeCard("cardimage1.jpg", "Chicken Grilled", "Rifat", 320.0),
        // _homeCard("cardimage2.jpg", "Cupcake With Love", "Asif", 50.0),
        // _homeCard("cardimage3.jpg", "Delightful Breakfast", "Mannan", 150.0),
      // ],)
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
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: (){
            Navigator.pop(context); // this line closes the drawer
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.library_books),
          title: Text("Subjects"),
          onTap: (){
            Navigator.pop(context); // this line closes the drawer
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.add_to_photos),
          title: Text("Add Questions"),
          onTap: (){},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: (){
            Navigator.pop(context);
            Route route = MaterialPageRoute(builder: (context) => PageOne(null));
            Navigator.push(context, route).then((value) {
              setState(() {
                userName = value[0];
                userDesig = value[1];
                userOrg = value[2];
              });
              print("ASDASD");
            });
          },
        ),
        Divider(),
      ],)
    );
  }
  
  Widget _homeCard(String image, String title, String takenby, double price) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/images/" + image),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("Prepared by: " + takenby, style: TextStyle(fontSize: 14),),
                SizedBox(height: 5,),
                Text("Price: ৳ " + price.toString(), style: TextStyle(color: Colors.blueGrey, fontSize: 14),),
              ],
            )
          )
        ],
      ),
      margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
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

}


// ListView(children: <Widget>[
//           Container(
//             margin: EdgeInsets.all(10.0),
//             padding: EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               color: Colors.white,
              
//               borderRadius: BorderRadius.circular(5),
//               boxShadow: [ 
//                 BoxShadow(
//                   color: Colors.grey[200],
//                   blurRadius: 3.0, // has the effect of softening the shadow
//                   spreadRadius: 2.0, // has the effect of extending the shadow
//                   offset: Offset(
//                     1.0, // horizontal, move right 10
//                     1.0, // vertical, move down 10
//                   ),
//                 )
//               ],
//             ),
//             child: Text(_longText+_longText+_longText+_longText+_longText+_longText+_longText+_longText+_longText, 
//               textAlign: TextAlign.justify,
//               style: TextStyle(color: Colors.black, fontSize: 16),
//             ),
//           ),
//           Image.asset("assets/images/test1.jpg"),
//         ]),      

// Column(
        //   children: <Widget>[
        //     Stack(
        //       children: <Widget>[
        //         Image.asset("assets/images/test2.jpg"),
        //         Positioned(
        //           bottom: 20,
        //           left: 20,
        //           child: Text(_shortText, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25),),
        //         ),
        //       ],
        //     ),
        //     SizedBox(
        //       height: 20.0,
        //     ),
        //     Container(
        //       height: 150,
        //       padding: EdgeInsets.all(5.0),
        //       child: ListView(
        //         // scrollDirection: Axis.horizontal,
        //         children: <Widget>[
        //           ListTile(
        //             leading: CircleAvatar(child: Text('R'),),
        //             title: Text("A. H. M. Azimul Haque"),
        //             subtitle: Text("Assistant Director, NSI"),
        //             onTap: (){},
        //           ),
        //           ListTile(
        //             leading: CircleAvatar(child: Text('R'),),
        //             title: Text("A. H. M. Azimul Haque"),
        //             subtitle: Text("Assistant Director, NSI"),
        //             onTap: (){},
        //           ),
        //           ListTile(
        //             leading: CircleAvatar(child: Text('R'),),
        //             title: Text("A. H. M. Azimul Haque"),
        //             subtitle: Text("Assistant Director, NSI"),
        //             onTap: (){},
        //           ),
        //           _rowCell(),
        //           _rowCell(),
        //           _rowCell(),
        //         ],
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10.0,
        //     ),
        //   ],
        // ), 





// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//   }
// }
