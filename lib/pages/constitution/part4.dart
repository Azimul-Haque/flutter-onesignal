import 'package:flutter/material.dart';
import '../../globals.dart';

class PartFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("চতুর্থ ভাগঃ নির্বাহী বিভাগ"),
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
        Text("(চতুর্থ ভাগ) নির্বাহী বিভাগ", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(
              "১ম পরিচ্ছেদঃ রাষ্ট্রপতি \n\n৪৮। রাষ্ট্রপতি \n\n৪৯। ক্ষমা প্রদর্শনের অধিকার \n\n৫০। রাষ্ট্রপতি-পদের মেয়াদ \n\n৫১। রাষ্ট্রপতির দায়মুক্তি \n\n৫২। রাষ্ট্রপতির অভিশংসন \n\n৫৩। অসামর্থ্যের কারণে রাষ্ট্রপতির অপসারণ \n\n৫৪। অনুপস্থিতি প্রভৃতির-কালে রাষ্ট্রপতি-পদে স্পীকার \n\n\n২য় পরিচ্ছেদঃ প্রধানমন্ত্রী ও মন্ত্রিসভা \n\n৫৫। মন্ত্রিসভা \n\n৫৬। মন্ত্রিগণ \n\n৫৭। প্রধানমন্ত্রীর পদের মেয়াদ \n\n৫৮। অন্যান্য মন্ত্রীর পদের মেয়াদ \n\n৫৮ক [বিলুপ্ত] \n\n\n২ক পরিচ্ছেদ নির্দলীয় তত্ত্বাবধায়ক সরকার [সংবিধান (পঞ্চদশ সংশোধন) আইন, ২০১১ (২০১১ সনের ১৪ নং আইন)-এর ২১ ধারাবলে পরিচ্ছেদটি বিলুপ্ত।] \n\n\n৩য় পরিচ্ছেদঃ স্থানীয় শাসন \n\n৫৯। স্থানীয় শাসন \n\n৬০। স্থানীয় শাসন সংক্রান্ত প্রতিষ্ঠানের ক্ষমতা \n\n\n৪র্থ পরিচ্ছেদঃ প্রতিরক্ষা কর্মবিভাগ \n\n৬১। সর্বাধিনায়কতা \n\n৬২। প্রতিরক্ষা কর্মবিভাগে ভর্তি প্রভৃতি \n\n৬৩। যুদ্ধ \n\n\n৫ম পরিচ্ছেদঃ অ্যাটর্ণি -জেনারেল \n\n৬৪। অ্যাটর্ণি-জেনারেল", 
              style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10,),

          ]),
        ),
      ],),
    );
  }
}