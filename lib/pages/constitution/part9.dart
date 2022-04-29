import 'package:flutter/material.dart';
import '../../globals.dart';

class PartNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("নবম ভাগঃ বাংলাদেশের কর্মবিভাগ"),
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
            "(নবম ভাগ) বাংলাদেশের কর্মবিভাগ",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          SizedBox(
            height: 3,
          ),
          Text(
            "১ম পরিচ্ছেদঃ কর্মবিভাগ",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১৩৩। নিয়োগ ও কর্মের শর্তাবলী'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৩। এই সংবিধানের বিধানাবলী-সাপেক্ষে সংসদ আইনের দ্বারা প্রজাতন্ত্রের কর্মে কর্মচারীদের নিয়োগ ও কর্মের শর্তাবলী নিয়ন্ত্রণ করিতে পারিবেন: \nতবে শর্ত থাকে যে, এই উদ্দেশ্যে আইনের দ্বারা বা অধীন বিধান প্রণীত না হওয়া পর্যন্ত অনুরূপ কর্মচারীদের নিয়োগ ও কর্মের শর্তাবলী নিয়ন্ত্রণ করিয়া বিধিসমূহ-প্রণয়নের ক্ষমতা রাষ্ট্রপতির থাকিবে এবং অনুরূপ যে কোন আইনের বিধানাবলী-সাপেক্ষে অনুরূপ বিধিসমূহ কার্যকর হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৩। নিয়োগ ও কর্মের শর্তাবলী'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৩। এই সংবিধানের বিধানাবলী-সাপেক্ষে সংসদ আইনের দ্বারা প্রজাতন্ত্রের কর্মে কর্মচারীদের নিয়োগ ও কর্মের শর্তাবলী নিয়ন্ত্রণ করিতে পারিবেন: \nতবে শর্ত থাকে যে, এই উদ্দেশ্যে আইনের দ্বারা বা অধীন বিধান প্রণীত না হওয়া পর্যন্ত অনুরূপ কর্মচারীদের নিয়োগ ও কর্মের শর্তাবলী নিয়ন্ত্রণ করিয়া বিধিসমূহ-প্রণয়নের ক্ষমতা রাষ্ট্রপতির থাকিবে এবং অনুরূপ যে কোন আইনের বিধানাবলী-সাপেক্ষে অনুরূপ বিধিসমূহ কার্যকর হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n \n\n১৩৪। কর্মের মেয়াদ \n\n১৩৫। অসামরিক সরকারী কর্মচারীদের বরখাস্ত প্রভৃতি \n\n১৩৬। কর্মবিভাগ-পুনর্গঠন \n\n\n২য় পরিচ্ছেদঃ সরকারী কর্ম কমিশন \n\n১৩৭। কমিশন-প্রতিষ্ঠা \n\n১৩৮। সদস্য-নিয়োগ \n\n১৩৯। পদের মেয়াদ \n\n১৪০। কমিশনের দায়িত্ব \n\n১৪১। বার্ষিক রিপোর্ট \n\n\nনবম-ক ভাগ জরুরী বিধানাবলী \n\n১৪১ক। জরুরী-অবস্থা ঘোষণা \n\n১৪১খ। জরুরী-অবস্থার সময় সংবিধানের কতিপয় অনুচ্ছেদের বিধান স্থগিতকরণ \n\n১৪১গ। জরুরী-অবস্থার সময় মৌলিক অধিকারসমূহ স্থগিতকরণ",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
