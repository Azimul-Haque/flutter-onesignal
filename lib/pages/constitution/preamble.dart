import 'package:flutter/material.dart';
import '../../globals.dart';

class PreamblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("প্রস্তাবনা"),
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
            "সংবিধানের প্রস্তাবনা",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "বিস্‌মিল্লাহির-রহ্‌মানির রহিম (দয়াময়, পরম দয়ালু, আল্লাহের নামে/পরম করুণাময় সৃষ্টিকর্তার নামে।)",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "আমরা, বাংলাদেশের জনগণ, ১৯৭১ খ্রীষ্টাব্দের মার্চ মাসের ২৬ তারিখে স্বাধীনতা ঘোষণা করিয়া জাতীয় মুক্তির জন্য ঐতিহাসিক সংগ্রামের মাধ্যমে স্বাধীন ও সার্বভৌম গণপ্রজাতন্ত্রী বাংলাদেশ প্রতিষ্ঠিত করিয়াছি;",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "আমরা অঙ্গীকার করিতেছি যে, যে সকল মহান আদর্শ আমাদের বীর জনগণকে জাতীয় মুক্তি সংগ্রামে আত্মনিয়োগ ও বীর শহীদদিগকে প্রাণোৎসর্গ করিতে উদ্বুদ্ধ করিয়াছিল -জাতীয়তাবাদ, সমাজতন্ত্র, গণতন্ত্র ও ধর্মনিরপেক্ষতার সেই সকল আদর্শ এই সংবিধানের মূলনীতি হইবে;",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "আমরা আরও অঙ্গীকার করিতেছি যে, আমাদের রাষ্ট্রের অন্যতম মূল লক্ষ্য হইবে গণতান্ত্রিক পদ্ধতিতে এমন এক শোষণমুক্ত সমাজতান্ত্রিক সমাজের প্রতিষ্ঠা- যেখানে সকল নাগরিকের জন্য আইনের শাসন, মৌলিক মানবাধিকার এবং রাজনৈতিক, অর্থনৈতিক ও সামাজিক সাম্য, স্বাধীনতা ও সুবিচার নিশ্চিত হইবে;",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "আমরা দৃঢ়ভাবে ঘোষণা করিতেছি যে, আমরা যাহাতে স্বাধীন সত্তায় সমৃদ্ধি লাভ করিতে পারি এবং মানবজাতির প্রগতিশীল আশা-আকাঙ্খার সহিত সঙ্গতি রক্ষা করিয়া আন্তর্জাতিক শান্তি ও সহযোগিতার ক্ষেত্রে পূর্ণ ভূমিকা পালন করিতে পারি, সেইজন্য বাংলাদেশের জনগণের অভিপ্রায়ের অভিব্যক্তিস্বরূপ এই সংবিধানের প্রাধান্য অক্ষুণ্ন রাখা এবং ইহার রক্ষণ, সমর্থন ও নিরাপত্তাবিধান আমাদের পবিত্র কর্তব্য;",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "এতদ্বারা আমাদের এই গণপরিষদে, অদ্য তের শত ঊনআশী বঙ্গাব্দের কার্তিক মাসের আঠারোো তারিখ, মোতাবেক ঊনিশ শত বাহাত্তর খ্রীষ্টাব্দের নভেম্বর মাসের চার তারিখে, আমরা এই সংবিধান রচনা ও বিধিবদ্ধ করিয়া সমবেতভাবে গ্রহণ করিলাম।",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
