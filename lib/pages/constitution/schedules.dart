import 'package:flutter/material.dart';
import '../../globals.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("তফসিল"),
        // automaticallyImplyLeading: false,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.check), 
        //     onPressed: () async{
        //       Navigator.pop(context);
        //     },
        //     tooltip: "Ok",
        //   ),
        // ],
        flexibleSpace: appBarStyle(),
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 10,),
        Text("সংবিধানের ৭টি তফসিল", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(
              "প্রথম তফসিল – অন্যান্য বিধান সত্ত্বেও কার্যকর আইন। \n\n\nদ্বিতীয় তফসিল – রাষ্টপতি নির্বাচন। \n\n\nতৃতীয় তফসিল – শপথ ও ঘোষণা। \n\n\nচতুর্থ তফসিল – ক্রান্তিকাল ও অস্থায়ী বিধানমালা। \n\n\nপঞ্চম তফসিল – ১৯৭১ সালের ৭ মার্চ তারিখে ঢাকার রেসকোর্স ময়দানে জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের দেওয়া ঐতিহাসিক ভাষণ। \n\n\nষষ্ঠ  তফসিল – ১৯৭১ সালের ২৫ মার্চ মধ্যরাত শেষে অর্থাৎ ২৬ মার্চ প্রথম প্রহরে জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমান কর্তৃক স্বাধীনতার ঘোষণা। \n\n\nসপ্তম তফসিল – ১০ এপ্রিল ১৯৭১ এর মুজিব নগর সরকারের জারিকৃত স্বাধীনতার ঘোষণাপত্র।", 
              style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10,),

          ]),
        ),
      ],),
    );
  }
}