import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'BCS Charioteer',
  home: HomePage(),
  // theme: ThemeData(
  //   primarySwatch: Colors.blue,
  // ),
));

class HomePage extends StatelessWidget {
  final _longText = "গান শুনতে যে আমার ভালো লাগে এটা বুঝতে পারি প্রথম আমি ক্লাস সিক্স বা সেভেনে। এর আগে গান শোনা বলতে যতটুকু মনে আছে তা হচ্ছে, আমাদের নেকমরদের বাসার সামনের জুতার দোকানগুলোতে বাজানো গানগুলো। অর্থাৎ, সে দোকানি ভাইদের গান শোনার অভিরুচিই ছিল পরোক্ষভাবে আমার গান শোনার 'টেস্ট'। কিছু গান শোনা হতো বাসার বেশ পেছনে তেলের মিল থেকে; হিন্দিতে বাজানো গানগুলো। ভরদুপুরে হয়তো ঘুমানোর জন্য শুয়েছি, ঘুম আসছে না।";
  final _shortText = "হারিয়ে গিয়েছি";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('BCS Charioteer')),
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset("assets/images/test2.jpg"),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(_shortText, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30),),
                )
              ],)
          ],)
          
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
