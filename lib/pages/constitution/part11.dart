import 'package:flutter/material.dart';
import '../../globals.dart';

class PartEleven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("একাদশ ভাগঃ বিবিধ"),
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
            "(একাদশ ভাগ) বিবিধ",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১৪৩। প্রজাতন্ত্রের সম্পত্তি'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১৪৩। (১) আইনসঙ্গতভাবে প্রজাতন্ত্রের উপর ন্যস্ত যে কোন ভূমি বা সস্পত্তি ব্যতীত নিম্নলিখিত প্রজাতন্ত্রের উপর ন্যস্ত হইবে: \n(ক) বাংলাদেশের যে কোন ভূমির অন্তঃস্থ সকল খনিজ ও অন্যান্য মূল্যসম্পন্ন সামগ্রী; \n(খ) বাংলাদেশের রাষ্ট্রীয় জলসীমার অন্তর্বর্তী মহাসাগরের অন্তঃস্থ কিংবা বাংলাদেশের মহীসোপানের উপরিস্থ মহাসাগরের অন্তঃস্থ সকল ভূমি, খনিজ ও অন্যান্য মূল্যসম্পন্ন সামগ্রী; এবং \n(গ) বাংলাদেশে অবস্থিত প্রকৃত মালিকবিহীন যে কোন সম্পত্তি।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) সংসদ সময়ে সময়ে আইনের দ্বারা বাংলাদেশের রাষ্ট্রীয় সীমানার এবং বাংলাদেশের রাষ্ট্রীয় জলসীমা ও মহীসোপানের সীমা-নির্ধারণের বিধান করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text(
                '১৪৪। সম্পত্তি ও কারবার প্রভৃতি-প্রসঙ্গে নির্বাহী কর্তৃত্ব'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১৪৪। প্রজাতন্ত্রের নির্বাহী কর্তৃত্বে সম্পত্তি গ্রহণ, বিক্রয়, হস্তান্তর, বন্ধকদান ও বিলি-ব্যবস্থা, যে কোন কারবার বা ব্যবসায়-চালনা এবং যে কোন চুক্তি প্রণয়ন করা যাইবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('১৪৫। চুক্তি ও দলিল'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১৪৫। (১) প্রজাতন্ত্রের নির্বাহী কর্তত্বে প্রণীত সকল চুক্তি ও দলিল রাষ্ট্রপতি কর্তৃক প্রণীত বলিয়া প্রকাশ করা হইবে এবং রাষ্ট্রপতি যেরূপ নির্দেশ বা ক্ষমতা প্রদান করিবেন, তাঁহার পক্ষে সেইরূপ ব্যক্তি কর্তৃক ও সেইরূপ প্রণালীতে তাহা সম্পাদিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) প্রজাতন্ত্রের নির্বাহী কর্তৃত্বে কোন চুক্তি বা দলিল প্রণয়ন বা সম্পাদন করা হইলে উক্ত কর্তৃত্বে অনুরূপ চুক্তি বা দলিল প্রণয়ন বা সম্পাদন করিবার জন্য রাষ্ট্রপতি কিংবা অন্য কোন ব্যক্তি ব্যক্তিগতভাবে দায়ী হইবেন না, তবে এই অনুচ্ছেদ সরকারের বিরুদ্ধে যথাযথ কার্যধারা আনয়নে কোন ব্যক্তির অধিকার ক্ষুণ্ন করিবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n \n\n \n\n১৪৫ক। আন্তর্জাতিক চুক্তি \n\n১৪৬। বাংলাদেশের নামে মামলা \n\n১৪৭। কতিপয় পদাধিকারীর পারিশ্রমিক প্রভৃতি \n\n১৪৮। পদের শপথ \n\n১৪৯। প্রচলিত আইনের হেফাজত \n\n১৫০। ক্রান্তিকালীন ও অস্থায়ী বিধানাবলী \n\n১৫১। রহিতকরণ \n\n১৫২। ব্যাখ্যা \n\n১৫৩। প্রবর্তন, উল্লেখ ও নির্ভরযোগ্য পাঠ",
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
