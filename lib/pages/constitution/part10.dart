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
                '৮৷ (১) জাতীয়তাবাদ, সমাজতন্ত্র, গণতন্ত্র ও ধর্মনিরপেক্ষতা- এই নীতিসমূহ এবং তৎসহ এই নীতিসমূহ হইতে উদ্ভূত এই ভাগে বর্ণিত অন্য সকল নীতি রাষ্ট্র পরিচালনার মূলনীতি বলিয়া পরিগণিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) এই ভাগে বর্ণিত নীতিসমূহ বাংলাদেশ-পরিচালনার মূলসূত্র হইবে, আইন-প্রণয়নকালে রাষ্ট্র তাহা প্রয়োগ করিবেন, এই সংবিধান ও বাংলাদেশের অন্যান্য আইনের ব্যাখ্যাদানের ক্ষেত্রে তাহা নির্দেশক হইবে এবং তাহা রাষ্ট্র ও নাগরিকদের কার্যের ভিত্তি হইবে, তবে এই সকল নীতি আদালতের মাধ্যমে বলবৎযোগ্য হইবে না৷',
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
