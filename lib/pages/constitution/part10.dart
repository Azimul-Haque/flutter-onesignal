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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "(দশম ভাগ) সংবিধান-সংশোধন",
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
          ExpansionTile(
            title: Text('১৪২। সংবিধানের বিধান সংশোধনের ক্ষমতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১৪২। এই সংবিধানে যাহা বলা হইয়াছে, তাহা সত্ত্বেও- \n(ক) সংসদের আইন-দ্বারা এই সংবিধানের কোন বিধান সংযোজন, পরিবর্তন, প্রতিস্থাপন বা রহিতকরণের দ্বারা সংশোধিত হইতে পারিবেঃ তবে শর্ত থাকে যে, \n(অ) অনুরুপ সংশোধনীর জন্য আনীত কোন বিলের সম্পূর্ন শিরনামায় এই সংবিধানের কোন বিধান সংশোধন করা হইবে বলিয়া স্পষ্টরুপে উল্লেখ না থাকিলে বিলটি বিবেচনার জন্য গ্রহণ করা যাইবে না; \n(আ) সংসদের মোট সদস্য-সংখ্যার অন্যূন দুই-তৃতীয়াংশ ভোটে গৃহীত না হইলে অনুরুপ কোন বিলে সম্মতিদানের জন্য তাহা রাষ্ট্রপতির নিকট উপস্থাপিত হইবে না; \n\n(খ) উপরি-উক্ত উপায়ে কোন বিল গৃহীত হইবার পর সম্মতির জন্য রাষ্ট্রপতির নিকট তাহা উপস্থাপিত হইলে উপস্থাপনের সাত দিনের মধ্যে তিনি বিলটিতে সম্মতিদান করিবেন, এবং তিনি তাহা করিতে অসমর্থ হইলে উক্ত মেয়াদের অবসানে তিনি বিলটিতে সম্মতিদান করিয়াছেন বলিয়া গণ্য হইবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "",
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
