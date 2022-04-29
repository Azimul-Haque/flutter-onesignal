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
            title: Text('১৩৪। কর্মের মেয়াদ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৪। এই সংবিধানের দ্বারা অন্যরূপ বিধান না করা হইয়া থাকিলে প্রজাতন্ত্রের কর্মে নিযুক্ত প্রত্যেক ব্যক্তি রাষ্ট্রপতির সন্তোষানুযায়ী সময়সীমা পর্যন্ত স্বীয় পদে বহাল থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৫। অসামরিক সরকারী কর্মচারীদের বরখাস্ত প্রভৃতি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৫। (১) প্রজাতন্ত্রের কর্মে অসামরিক পদে নিযুক্ত কোন ব্যক্তি তাঁহার নিয়োগকারী কর্তৃপক্ষ-অপেক্ষা অধঃস্তন কোন কর্তৃপক্ষের দ্বারা বরখাস্ত বা অপসারিত বা পদাবনমিত হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) অনুরূপ পদে নিযুক্ত কোন ব্যক্তিকে তাঁহার সম্পর্কে প্রস্তাবিত ব্যবস্থা গ্রহণের বিরুদ্ধে কারণ দর্শাইবার যুক্তিসঙ্গত সুযোগদান না করা পর্যন্ত তাঁহাকে বরখাস্ত বা অপসারিত বা পদাবনমিত করা যাইবে না: \nতবে শর্ত থাকে যে, এই দফা সেই সকল ক্ষেত্রে প্রযোজ্য হইবে না, যেখানে \n(অ) কোন ব্যক্তি যে আচরণের ফলে ফৌজদারী অপরাধে দণ্ডিত হইয়াছেন, সেই আচরণের জন্য তাঁহাকে বরখাস্ত, অপসারিত বা পদাবনমিত করা হইয়াছে; অথবা \n(আ) কোন ব্যক্তিকে বরখাস্ত, অপসারিত বা পদাবনমিত করিবার ক্ষমতাসম্পন্ন কর্তৃপক্ষের নিকট সন্তোষজনকভাবে প্রতীয়মান হয় যে, কোন কারণে- যাহা উক্ত কর্তৃপক্ষ লিপিবদ্ধ করিবেন- উক্ত ব্যক্তিকে কারণ দর্শাইবার সুযোগদান করা যুক্তিসঙ্গতভাবে সম্ভব নহে; অথবা \n(ই) রাষ্ট্রপতির নিকট সন্তোষজনকভাবে প্রতীয়মান হয় যে, রাষ্ট্রের নিরাপত্তার স্বার্থে উক্ত ব্যক্তিকে অনুরূপ সুযোগদান সমীচীন নহে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) অনুরূপ কোন ব্যক্তিকে এই অনুচ্ছেদের (২) দফায় বর্ণিত কারণ দর্শাইবার সুযোগদান করা যুক্তিসঙ্গতভাবে সম্ভব কি না, এইরূপ প্রশ্ন উত্থাপিত হইলে সেই সম্পর্কে তাঁহাকে বরখাস্ত, অপসারিত বা পদাবনমিত করিবার ক্ষমতাসম্পন্ন কর্তৃপক্ষের সিদ্ধান্ত চূড়ান্ত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) যে ক্ষেত্রে কোন ব্যক্তি কোন লিখিত চুক্তির অধীন প্রজাতন্ত্রের কর্মে নিযুক্ত হইয়াছেন এবং উক্ত চুক্তির শর্তাবলী-অনুযায়ী যথাযথ নোটিশের দ্বারা চুক্তিটির অবসান ঘটান হইয়াছে, সেই ক্ষেত্রে চুক্তিটির অনুরূপ অবসানের জন্য তিনি এই অনুচ্ছেদের উদ্দেশ্যসাধনকল্পে পদ হইতে অপসারিত হইয়াছেন বলিয়া গণ্য হইবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৬। কর্মবিভাগ-পুনর্গঠন'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৬। আইনের দ্বারা প্রজাতন্ত্রের কর্মবিভাগসমূহের সৃষ্টি, সংযুক্তকরণ ও একত্রীকরণসহ পুনর্গঠনের বিধান করা যাইবে এবং অনুরূপ আইন প্রজাতন্ত্রের কর্মে নিযুক্ত কোন ব্যক্তির কর্মের শর্তাবলীর তারতম্য করিতে ও তাহা রদ করিতে পারিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          SizedBox(
            height: 3,
          ),
          Text(
            "২য় পরিচ্ছেদঃ সরকারী কর্ম কমিশন",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১৩৭। কমিশন-প্রতিষ্ঠা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৬। আইনের দ্বারা প্রজাতন্ত্রের কর্মবিভাগসমূহের সৃষ্টি, সংযুক্তকরণ ও একত্রীকরণসহ পুনর্গঠনের বিধান করা যাইবে এবং অনুরূপ আইন প্রজাতন্ত্রের কর্মে নিযুক্ত কোন ব্যক্তির কর্মের শর্তাবলীর তারতম্য করিতে ও তাহা রদ করিতে পারিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n১৩৮। সদস্য-নিয়োগ \n\n১৩৯। পদের মেয়াদ \n\n১৪০। কমিশনের দায়িত্ব \n\n১৪১। বার্ষিক রিপোর্ট \n\n\nনবম-ক ভাগ জরুরী বিধানাবলী \n\n১৪১ক। জরুরী-অবস্থা ঘোষণা \n\n১৪১খ। জরুরী-অবস্থার সময় সংবিধানের কতিপয় অনুচ্ছেদের বিধান স্থগিতকরণ \n\n১৪১গ। জরুরী-অবস্থার সময় মৌলিক অধিকারসমূহ স্থগিতকরণ",
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
