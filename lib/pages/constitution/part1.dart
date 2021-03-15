import 'package:flutter/material.dart';
import '../../globals.dart';

class PartOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("প্রথম ভাগঃ প্রজাতন্ত্র"),
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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "(প্রথম ভাগ) প্রজাতন্ত্র",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(15),
            // child: Column(children: <Widget>[
            //   Text(
            //     "১৷ প্রজাতন্ত্র \n\n২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা \n\n২ক৷ রাষ্ট্রধর্ম \n\n৩৷ রাষ্ট্রভাষা \n\n৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক \n\n৪ক। জাতির পিতার প্রতিকৃতি \n\n৫৷ রাজধানী \n\n৬৷ নাগরিকত্ব \n\n৭৷ সংবিধানের প্রাধান্য \n\n৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ \n\n৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য",
            //     style:
            //         TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
            //     textAlign: TextAlign.justify,
            //   ),
            //   SizedBox(
            //     height: 10,
            //   ),
            // ]),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "১৷ প্রজাতন্ত্র \n\n২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা \n\n২ক৷ রাষ্ট্রধর্ম \n\n৩৷ রাষ্ট্রভাষা \n\n৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক \n\n৪ক। জাতির পিতার প্রতিকৃতি \n\n৫৷ রাজধানী \n\n৬৷ নাগরিকত্ব \n\n৭৷ সংবিধানের প্রাধান্য \n\n৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ \n\n৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য",
                    style: TextStyle(
                        color: Colors.black87, fontSize: 15, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "১৷ প্রজাতন্ত্র",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "সংবিধানের প্রথম সংশোধনী বিল পাস হয় ১৯৭৩ সালের ১৫ জুলাই। সংবিধানের প্রথম সংশোধনীটি ছিল যুদ্ধাপরাধীসহ অন্যান্য মানবতাবিরোধী অপরাধীদের বিচার নিশ্চিত করা। ১৯৭১ সালের মুক্তিযুদ্ধের পরে এই সংশোধনীর মাধ্যমে যুদ্ধাপরাধীদের বিচার নিশ্চিত করা হয়। তৎকালীন আইনমন্ত্রী মনোরঞ্জন ধর বিলটি সংসদে উত্থাপন করেন। ২৫৪-০ ভোটে বিলটি পাস হয়। তিনজন ভোটার ওই সময় ভোটদানে বিরত থাকেন। পরে এটি ১৯৭৩ সালের ১৭ জুলাই রাষ্ট্রপতির অনুমোদন পায়।",
                    style: TextStyle(
                        color: Colors.black, fontSize: 15, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  Divider(
                    height: 25,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
