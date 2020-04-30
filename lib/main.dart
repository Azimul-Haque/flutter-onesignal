import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'BCS Charioteer',
  home: HomePage(),
  // theme: ThemeData(
  //   primarySwatch: Colors.blue,
  // ),
));

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('BCS Charioteer')),
        body: Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          padding: EdgeInsets.all(10.0),
          height: 120,
          width: 250,
          decoration: BoxDecoration(
            color: Color.fromRGBO(248, 148, 3, 1),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Text('This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test.', 
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ) 
        // Padding(
        //   padding: EdgeInsets.all(15.0),
        //   child: Text('This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test.', 
        //       textAlign: TextAlign.justify,
        //       style: TextStyle(color: Colors.green, fontSize: 20),
        //     ),
        //   )
      );
  }
}

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
