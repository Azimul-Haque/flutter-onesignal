import 'package:flutter/material.dart';
import '../../globals.dart';

class PartTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("দ্বিতীয় ভাগঃ রাষ্ট্র পরিচালনার মূলনীতি"),
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
            "(দ্বিতীয় ভাগ) রাষ্ট্র পরিচালনার মূলনীতি",
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
            title: Text('৮৷ মূলনীতিসমূহ'),
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
                "৮৷ মূলনীতিসমূহ \n\n৯। জাতীয়তাবাদ \n\n১০। সমাজতন্ত্র ও শোষণমুক্তি \n\n১১৷ গণতন্ত্র ও মানবাধিকার \n\n১২। ধর্ম নিরপেক্ষতা ও ধর্মীয় স্বাধীনতা \n\n১৩৷ মালিকানার নীতি \n\n১৪৷ কৃষক ও শ্রমিকের মুক্তি \n\n১৫৷ মৌলিক প্রয়োজনের ব্যবস্থা \n\n১৬৷ গ্রামীণ উন্নয়ন ও কৃষি বিপ্লব \n\n১৭৷ অবৈতনিক ও বাধ্যতামূলক শিক্ষা \n\n১৮৷ জনস্বাস্থ্য ও নৈতিকতা \n\n১৮ক। পরিবেশ ও জীব-বৈচিত্র্য সংরক্ষণ ও উন্নয়ন \n\n১৯৷ সুযোগের সমতা \n\n২০৷ অধিকার ও কর্তব্যরূপে কর্ম \n\n২১৷ নাগরিক ও সরকারী কর্মচারীদের কর্তব্য \n\n২২৷ নির্বাহী বিভাগ হইতে বিচার বিভাগের পৃথকীকরণ \n\n২৩৷ জাতীয় সংস্কৃতি \n\n২৩ক। উপজাতি, ক্ষুদ্র জাতিসত্তা, নৃ-গোষ্ঠী ও সম্প্রদায়ের সংস্কৃতি \n\n২৪৷ জাতীয় স্মৃতিনিদর্শন, প্রভৃতি \n\n২৫৷ আন্তর্জাতিক শান্তি, নিরাপত্তা ও সংহতির উন্নয়ন",
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
