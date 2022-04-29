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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "(অষ্টম ভাগ) মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১২৭। মহা হিসাব-নিরীক্ষক পদের প্রতিষ্ঠা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২৭। (১) বাংলাদেশের একজন মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক (অতঃপর "মহা হিসাব-নিরীক্ষক" নামে অভিহিত) থাকিবেন এবং তাঁহাকে রাষ্ট্রপতি নিয়োগদান করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) এই সংবিধান ও সংসদ কর্তৃক প্রণীত যে কোন আইনের বিধানাবলী সাপেক্ষে মহা হিসাব-নিরীক্ষকের কর্মের শর্তাবলী রাষ্ট্রপতি আদেশের দ্বারা যেরূপ নির্ধারণ করিবেন, সেইরূপ হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১২৮। মহা-হিসাব নিরীক্ষকের দায়িত্ব'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২৮। (১) মহা হিসাব-নিরীক্ষক প্রজাতন্ত্রের সরকারী হিসাব এবং সকল আদালত, সরকারী কর্তৃপক্ষ ও কর্মচারীর সরকারী হিসাব নিরীক্ষা করিবেন ও অনুরূপ হিসাব সম্পর্কে রিপোর্টদান করিবেন এবং সেই উদ্দেশ্যে তিনি কিংবা সেই প্রয়োজনে তাঁহার দ্বারা ক্ষমতাপ্রাপ্ত কোন ব্যক্তি প্রজাতন্ত্রের কর্মে নিযুক্ত যে কোন ব্যক্তির দখলভুক্ত সকল নথি, বহি, রসিদ, দলিল, নগদ অর্থ, ষ্ট্যাম্প, জামিন, ভাণ্ডার বা অন্য প্রকার সরকারী সম্পত্তি পরীক্ষার অধিকারী হইবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n \n\n১২৯। মহা হিসাব-নিরীক্ষকের কর্মের মেয়াদ \n\n১৩০। অস্থায়ী মহা হিসাব-নিরীক্ষক \n\n১৩১। প্রজাতন্ত্রের হিসাব-রক্ষার আকার ও পদ্ধতি \n\n১৩২। সংসদে মহা হিসাব-নিরীক্ষকের রিপোর্ট উপস্থাপন",
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
