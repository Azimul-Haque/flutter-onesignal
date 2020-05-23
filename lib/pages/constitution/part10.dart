import 'package:flutter/material.dart';
import '../../globals.dart';

class PartTen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("দশম ভাগঃ সংবিধান-সংশোধন"),
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
        Text("(দশম ভাগ) সংবিধান-সংশোধন", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(
              "১৷ প্রজাতন্ত্র \n\n২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা \n\n২ক৷ রাষ্ট্রধর্ম \n\n৩৷ রাষ্ট্রভাষা \n\n৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক \n\n৪ক। জাতির পিতার প্রতিকৃতি \n\n৫৷ রাজধানী \n\n৬৷ নাগরিকত্ব \n\n৭৷ সংবিধানের প্রাধান্য \n\n৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ \n\n৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য", 
              style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10,),

          ]),
        ),
      ],),
    );
  }
}