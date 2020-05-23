import 'package:flutter/material.dart';
import '../../globals.dart';

class PartEight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("অষ্টম ভাগঃ মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক"),
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
        Text("(অষ্টম ভাগ) মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(
              "১২৭। মহা হিসাব-নিরীক্ষক পদের প্রতিষ্ঠা \n\n১২৮। মহা-হিসাব নিরীক্ষকের দায়িত্ব \n\n১২৯। মহা হিসাব-নিরীক্ষকের কর্মের মেয়াদ \n\n১৩০। অস্থায়ী মহা হিসাব-নিরীক্ষক \n\n১৩১। প্রজাতন্ত্রের হিসাব-রক্ষার আকার ও পদ্ধতি \n\n১৩২। সংসদে মহা হিসাব-নিরীক্ষকের রিপোর্ট উপস্থাপন", 
              style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10,),

          ]),
        ),
      ],),
    );
  }
}