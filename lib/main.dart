import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'BCS Charioteer',
  home: HomePage(),
  // theme: ThemeData(
  //   primarySwatch: Colors.blue,
  // ),
));

class HomePage extends StatelessWidget {
  String _longText = "গান শুনতে যে আমার ভালো লাগে এটা বুঝতে পারি প্রথম আমি ক্লাস সিক্স বা সেভেনে। এর আগে গান শোনা বলতে যতটুকু মনে আছে তা হচ্ছে, আমাদের নেকমরদের বাসার সামনের জুতার দোকানগুলোতে বাজানো গানগুলো। অর্থাৎ, সে দোকানি ভাইদের গান শোনার অভিরুচিই ছিল পরোক্ষভাবে আমার গান শোনার 'টেস্ট'। কিছু গান শোনা হতো বাসার বেশ পেছনে তেলের মিল থেকে; হিন্দিতে বাজানো গানগুলো। ভরদুপুরে হয়তো ঘুমানোর জন্য শুয়েছি, ঘুম আসছে না।";
  String _shortText = "হারিয়ে গিয়েছি";
  List people = [
                  { "name": "A. H. M. Azimul Haque", "email": "Assistant Director, NSI" },
                  { "name": "Kay", "email": "sandy@riley.dm" },
                  { "name": "Allison", "email": "kay@abbott.tt" },
                  { "name": "Rick", "email": "neal@raynor.om" },
                  { "name": "Marvin", "email": "sandra@warren.um" },
                  { "name": "Ben", "email": "tracy@olsen.fj" },
                  { "name": "Kerry", "email": "catherine@oakley.sd" },
                  { "name": "Nicholas", "email": "stephanie@goldman.je" },
                  { "name": "Patricia", "email": "jennifer@strickland.bt" },
                  { "name": "Anna", "email": "tracey@newton.la" },
                  { "name": "Diana", "email": "veronica@richmond.cu" },
                  { "name": "Tony", "email": "bradley@desai.cg" },
                  { "name": "Rifat", "email": "beth@o.ma" },
                  { "name": "Asif", "email": "asif@o.ma" },
                  { "name": "Sajal", "email": "sajal@o.ma" },
                  { "name": "Arefin", "email": "arefin@o.ma" },
                  { "name": "Mannan", "email": "mannan@o.ma" },
                ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('BCS Charioteer')),
        drawer: Drawer(
          child: Text("This is a Drawer"),
        ),
        body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                    leading: CircleAvatar(child: Text(people[index]["name"][0]),),
                    title: Text(people[index]["name"]),
                    subtitle: Text(people[index]["email"]),
                    onTap: (){},
                  );
          },
        ),
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
//     );
//   }
// }
