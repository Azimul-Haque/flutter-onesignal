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
                '১২৫। এই সংবিধানে যাহা বলা হইয়াছে, তাহা সত্ত্বেও \n(ক) এই সংবিধানের ১২৪ অনুচ্ছেদের অধীন প্রণীত বা প্রণীত বলিয়া বিবেচিত নির্বাচনী এলাকার সীমা নির্ধারণ, কিংবা অনুরূপ নির্বাচনী এলাকার জন্য আসন-বন্টন সম্পর্কিত যে কোন আইনের বৈধতা সম্পর্কে আদালতে প্রশ্ন উত্থাপন করা যাইবে না; \n(খ) সংসদ কর্তৃক প্রণীত কোন আইনের দ্বারা বা অধীন বিধান-অনুযায়ী কর্তৃপক্ষের নিকট এবং অনুরূপভাবে নির্ধারিত প্রণালীতে নির্বাচনী দরখাস্ত ব্যতীত রাষ্ট্রপতি পদে নির্বাচন বা সংসদের কোন নির্বাচন সম্পর্কে কোন প্রশ্ন উত্থাপন করা যাইবে না। \n(গ) কোন আদালত, নির্বাচনের তফসিল ঘোষণা করা হইয়াছে এইরুপ কোন নির্বাচনের বিষয়ে, নির্বাচন কমিশনকে যুক্তিসংগত নোটিশ ও শুনানির সুযোগ প্রদান না করিয়া, অন্তর্বর্তী বা অন্য কোনরুপে কোন আদেশ বা নির্দেশ প্রদান করিবেন না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n১২৮। মহা-হিসাব নিরীক্ষকের দায়িত্ব \n\n১২৯। মহা হিসাব-নিরীক্ষকের কর্মের মেয়াদ \n\n১৩০। অস্থায়ী মহা হিসাব-নিরীক্ষক \n\n১৩১। প্রজাতন্ত্রের হিসাব-রক্ষার আকার ও পদ্ধতি \n\n১৩২। সংসদে মহা হিসাব-নিরীক্ষকের রিপোর্ট উপস্থাপন",
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
