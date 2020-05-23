import 'package:flutter/material.dart';
import '../../globals.dart';

class PartThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("তৃতীয় ভাগঃ মৌলিক অধিকার"),
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
        Text("(তৃতীয় ভাগ) মৌলিক অধিকার", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(
              "২৬। মৌলিক অধিকারের সহিত অসমঞ্জস আইন বাতিল \n\n২৭। আইনের দৃষ্টিতে সমতা \n\n২৮। ধর্ম, প্রভৃতি কারণে বৈষম্য \n\n২৯। সরকারী নিয়োগ-লাভে সুযোগের সমতা \n\n৩০। বিদেশী, খেতাব, প্রভৃতি গ্রহণ নিষিদ্ধকরণ \n\n৩১। আইনের আশ্রয়-লাভের অধিকার \n\n৩২। জীবন ও ব্যক্তি-স্বাধীনতার অধিকাররক্ষণ \n\n৩৩। গ্রেপ্তার ও আটক সম্পর্কে রক্ষাকবচ \n\n৩৪। জবরদস্তি-শ্রম নিষিদ্ধকরণ \n\n৩৫। বিচার ও দন্ড সম্পর্কে রক্ষণ \n\n৩৬। চলাফেরার স্বাধীনতা \n\n৩৭। সমাবেশের স্বাধীনতা \n\n৩৮। সংগঠনের স্বাধীনতা \n\n৩৯। চিন্তা ও বিবেকের স্বাধীনতা এবং বাক্-স্বাধীনতা \n\n৪০। পেশা বা বৃত্তির স্বাধীনতা \n\n৪১। ধর্মীয় স্বাধীনতা \n\n৪২। সম্পত্তির অধিকার \n\n৪৩। গৃহ ও যোগাযোগের রক্ষণ \n\n৪৪। মৌলিক অধিকার বলবৎকরণ \n\n৪৫। শৃঙ্খলামূলক আইনের ক্ষেত্রে অধিকারের পরিবর্তন \n\n৪৬। দায়মুক্তি-বিধানের ক্ষমতা \n\n৪৭। কতিপয় আইনের হেফাজত \n\n৪৭ক। সংবিধানের কতিপয় বিধানের অপ্রযোজ্যতা", 
              style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10,),

          ]),
        ),
      ],),
    );
  }
}