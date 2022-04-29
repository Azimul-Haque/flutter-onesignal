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
                  title: SelectableText(
                '১৪৩। (১) আইনসঙ্গতভাবে প্রজাতন্ত্রের উপর ন্যস্ত যে কোন ভূমি বা সস্পত্তি ব্যতীত নিম্নলিখিত প্রজাতন্ত্রের উপর ন্যস্ত হইবে: \n(ক) বাংলাদেশের যে কোন ভূমির অন্তঃস্থ সকল খনিজ ও অন্যান্য মূল্যসম্পন্ন সামগ্রী; \n(খ) বাংলাদেশের রাষ্ট্রীয় জলসীমার অন্তর্বর্তী মহাসাগরের অন্তঃস্থ কিংবা বাংলাদেশের মহীসোপানের উপরিস্থ মহাসাগরের অন্তঃস্থ সকল ভূমি, খনিজ ও অন্যান্য মূল্যসম্পন্ন সামগ্রী; এবং \n(গ) বাংলাদেশে অবস্থিত প্রকৃত মালিকবিহীন যে কোন সম্পত্তি।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
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
                  title: SelectableText(
                '১৪৪। প্রজাতন্ত্রের নির্বাহী কর্তৃত্বে সম্পত্তি গ্রহণ, বিক্রয়, হস্তান্তর, বন্ধকদান ও বিলি-ব্যবস্থা, যে কোন কারবার বা ব্যবসায়-চালনা এবং যে কোন চুক্তি প্রণয়ন করা যাইবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('১৪৫। চুক্তি ও দলিল'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪৫। (১) প্রজাতন্ত্রের নির্বাহী কর্তত্বে প্রণীত সকল চুক্তি ও দলিল রাষ্ট্রপতি কর্তৃক প্রণীত বলিয়া প্রকাশ করা হইবে এবং রাষ্ট্রপতি যেরূপ নির্দেশ বা ক্ষমতা প্রদান করিবেন, তাঁহার পক্ষে সেইরূপ ব্যক্তি কর্তৃক ও সেইরূপ প্রণালীতে তাহা সম্পাদিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) প্রজাতন্ত্রের নির্বাহী কর্তৃত্বে কোন চুক্তি বা দলিল প্রণয়ন বা সম্পাদন করা হইলে উক্ত কর্তৃত্বে অনুরূপ চুক্তি বা দলিল প্রণয়ন বা সম্পাদন করিবার জন্য রাষ্ট্রপতি কিংবা অন্য কোন ব্যক্তি ব্যক্তিগতভাবে দায়ী হইবেন না, তবে এই অনুচ্ছেদ সরকারের বিরুদ্ধে যথাযথ কার্যধারা আনয়নে কোন ব্যক্তির অধিকার ক্ষুণ্ন করিবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৪৫ক। আন্তর্জাতিক চুক্তি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪৫ক। বিদেশের সহিত সম্পাদিত সকল চুক্তি রাষ্ট্রপতির নিকট পেশ করা হইবে, এবং রাষ্ট্রপতি তাহা সংসদে পেশ করিবার ব্যবস্থা করিবেনঃ \nতবে শর্ত থাকে যে, জাতীয় নিরাপত্তার সহিত সংশ্লিষ্ট অনুরুপ কোন চুক্তি কেবলমাত্র সংসদের গোপন বৈঠকে পেশ করা হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৪৬। বাংলাদেশের নামে মামলা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪৬। "বাংলাদেশ"-এই নামে বাংলাদেশ সরকার কর্তৃক বা বাংলাদেশ সরকারের বিরুদ্ধে মামলা দায়ের করা যাইতে পারিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৪৭। কতিপয় পদাধিকারীর পারিশ্রমিক প্রভৃতি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪৭। (১) এই অনুচ্ছেদ প্রযোজ্য হয়, এইরূপ কোন পদে অধিষ্ঠিত বা কর্মরত ব্যক্তির পারিশ্রমিক, বিশেষ-অধিকার ও কর্মের অন্যান্য শর্ত সংসদের আইনের দ্বারা বা অধীন নির্ধারিত হইবে, তবে অনুরূপভাবে নির্ধারিত না হওয়া পর্যন্ত \n(ক) এই সংবিধান প্রবর্তনের অব্যবহিত পূর্বে ক্ষেত্রমত সংশ্লিষ্ট পদে অধিষ্ঠিত বা কর্মরত ব্যক্তির ক্ষেত্রে তাহা যেরূপ প্রযোজ্য ছিল, সেইরূপ হইবে; অথবা \n(খ) অব্যবহিত পূর্ববর্তী উপ-দফা প্রযোজ্য না হইলে রাষ্ট্রপতি আদেশের দ্বারা যেরূপ নির্ণয় করিবেন, সেইরূপ হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) এই অনুচ্ছেদ প্রযোজ্য হয়, এইরূপ কোন পদে অধিষ্ঠিত বা কর্মরত ব্যক্তির কার্যভারকালে তাঁহার পারিশ্রমিক, বিশেষ অধিকার ও কর্মের অন্যান্য শর্তের এমন তারতম্য করা যাইবে না, যাহা তাঁহার পক্ষে অসুবিধাজনক হইতে পারে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) এই অনুচ্ছেদ প্রযোজ্য হয়, এইরূপ কোন পদে নিযুক্ত বা কর্মরত ব্যক্তি কোন লাভজনক পদ কিংবা বেতনাদিযুক্ত পদ বা মর্যাদায় বহাল হইবেন না কিংবা মুনাফালাভের উদ্দেশ্যযুক্ত কোন কোম্পানী, সমিতি বা প্রতিষ্ঠানের ব্যবস্থাপনায় বা পরিচালনায় কোনরূপ অংশগ্রহণ করিবেন না: \nতবে শর্ত থাকে যে, এই দফার উদ্দেশ্যসাধনকল্পে উপরের প্রথমোলি্লখিত পদে অধিষ্ঠিত বা কর্মরত রহিয়াছেন, কেবল এই কারণে কোন ব্যক্তি অনুরূপ লাভজনক পদ বা বেতনাদিযুক্ত পদ বা মর্যাদায় অধিষ্ঠিত বলিয়া গণ্য হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) এই অনুচ্ছেদ নিম্নলিখিত পদসমূহে প্রযোজ্য হইবে: \n(ক) রাষ্ট্রপতি, \n(খ) প্রধানমন্ত্রী, \n(গ) স্পীকার বা ডেপুটি স্পীকার, \n(ঘ) মন্ত্রী, প্রতিমন্ত্রী বা উপ-মন্ত্রী, \n(ঙ) সুপ্রীম কোর্টের বিচারক, \n(চ) মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক, \n(ছ) নির্বাচন কমিশনার, \n(জ) সরকারী কর্ম কমিশনের সদস্য।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৪৮। পদের শপথ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪৮। (১) তৃতীয় তফসিলে উল্লিখিত যে কোন পদে নির্বাচিত বা নিযুক্ত ব্যক্তি কার্যভার গ্রহণের পূর্বে উক্ত তফসিল-অনুযায়ী শপথগ্রহণ বা ঘোষণা (এই অনুচ্ছেদে "শপথ" বলিয়া অভিহিত) করিবেন এবং অনুরূপ শপথপত্রে বা ঘোষণাপত্রে স্বাক্ষরদান করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) এই সংবিধানের অধীন নির্দিষ্ট কোন ব্যক্তির নিকট শপথগ্রহণ আবশ্যক হইলে অনুরূপ ব্যক্তি যেরূপ ব্যক্তি ও স্থান নির্ধারণ করিবেন, সেইরূপ ব্যক্তির নিকট সেইরূপ স্থানে শপথগ্রহণ করা যাইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '২(ক) ১২৩ অনুচ্ছেদের (৩) দফার অধীন অনুষ্ঠিত সংসদ সদস্যদের সাধারণ নির্বাচনের ফলাফল সরকারী গেজেটে প্রজ্ঞাপিত হইবার তারিখ হইতে পরবর্তী তিন দিনের মধ্যে এই সংবিধানের অধীন এতদুদ্দেশ্যে নির্দিষ্ট ব্যক্তি বা তদুদ্দেশ্যে অনুরূপ ব্যক্তি কর্তৃক নির্ধারিত অন্য কোন ব্যক্তি যে কোন কারণে নির্বাচিত সদস্যদের শপথ পাঠ পরিচালনা করিতে ব্যর্থ হইলে বা না করিলে, প্রধান নির্বাচন কমিশনার উহার পরবর্তী তিন দিনের মধ্যে উক্ত শপথ পাঠ পরিচালনা করিবেন, যেন এই সংবিধানের অধীন তিনিই ইহার জন্য নির্দিষ্ট ব্যক্তি।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) এই সংবিধানের অধীন যে ক্ষেত্রে কোন ব্যক্তির পক্ষে কার্যভার গ্রহণের পূর্বে শপথগ্রহণ আবশ্যক, সেই ক্ষেত্রে শপথ গ্রহণের অব্যবহিত পর তিনি কার্যভার গ্রহণ করিয়াছেন বলিয়া গণ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৪৯। প্রচলিত আইনের হেফাজত'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪৯। এই সংবিধানের বিধানাবলী-সাপেক্ষে সকল প্রচলিত আইনের কার্যকরতা অব্যাহত থাকিবে, তবে অনুরূপ আইন এই সংবিধানের অধীন প্রণীত আইনের দ্বারা সংশোধিত বা রহিত হইতে পারিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৫০। ক্রান্তিকালীন ও অস্থায়ী বিধানাবলী'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৫০।(১) এই সংবিধানের অন্য কোন বিধান সত্ত্বেও ১৯৭২ সালের ১৬ই ডিসেম্বর তারিখে এই সংবিধান প্রবর্তনকালে সংবিধানের চতুর্থ তফসিলে বর্ণিত বিধানাবলী ক্রান্তিকালীন ও অস্থায়ী বিধানাবলী হিসাবে কার্যকর থাকিবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) ১৯৭১ সালের ৭ই মার্চ তারিখ হইতে ১৯৭২ সালের ১৬ই ডিসেম্বর তারিখে এই সংবিধান প্রবর্তন হইবার অব্যবহিত পূর্ব পর্যন্ত সময়কালের মধ্যে সংবিধানের পঞ্চম তফসিলে বর্ণিত ১৯৭১ সালের ৭ই মার্চ তারিখে ঢাকার রেসকোর্স ময়দানে দেওয়া জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের ঐতিহাসিক ভাষণ, ষষ্ঠ তফসিলে বর্ণিত ১৯৭১ সালের ২৬শে মার্চ তারিখে জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমান কর্তৃক বাংলাদেশের স্বাধীনতা ঘোষণার টেলিগ্রাম এবং সপ্তম তফসিলে বর্ণিত ১৯৭১ সালের ১০ই এপ্রিল তারিখে মুজিবনগর সরকারের জারিকৃত স্বাধীনতার ঘোষণাপত্র হইল বাংলাদেশের স্বাধীনতা ও মুক্তি সংগ্রামের ঐতিহাসিক ভাষণ ও দলিল, যাহা উক্ত সময়কালের জন্য ক্রান্তিকালীন ও অস্থায়ী বিধানাবলী বলিয়া গণ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৫১। রহিতকরণ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৫১। রাষ্ট্রপতির নিম্নলিখিত আদেশসমূহ এতদ্বারা রহিত করা হইল: \n(ক) আইনের ধারাবাহিকতা বলবৎকরণ আদেশ (১৯৭১ সালের ১০ই এপ্রিল তারিখে প্রণীত); \n(খ) ১৯৭২ সালের বাংলাদেশ অস্থায়ী সংবিধান আদেশ; \n(গ) ১৯৭২ সালের বাংলাদেশ হাইকোর্ট আদেশ (১৯৭২ সালের পি.ও. নং ৫); \n(ঘ) ১৯৭২ সালের বাংলদেশ মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক আদেশ (১৯৭২ সালের পি.ও. নং ১৫); \n(ঙ) ১৯৭২ সালের বাংলাদেশ গণপরিষদ আদেশ (১৯৭২ সালের পি.ও. নং ২২); \n(চ) ১৯৭২ সালের বাংলাদেশ নির্বাচন কমিশন আদেশ (১৯৭২ সালের পি.ও. নং ২৫); \n(ছ) ১৯৭২ সালের বাংলাদেশ সরকারী কর্ম কমিশনসমূহ আদেশ (১৯৭২ সালের পি.ও. নং ৩৪); \n(জ) ১৯৭২ সালের বাংলাদেশ (সরকারী কর্ম সম্পাদন) আদেশ (১৯৭২ সালের পি.ও. নং ৫৮)।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৫৩। প্রবর্তন, উল্লেখ ও নির্ভরযোগ্য পাঠ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৫৩। (১) এই সংবিধানকে "গণপ্রজাতন্ত্রী বাংলাদেশের সংবিধান" বলিয়া উল্লেখ করা হইবে এবং ১৯৭২ সালের ডিসেম্বর মাসের ১৬ তারিখে ইহা বলবৎ হইবে, যাহাকে এই সংবিধানে "সংবিধান-প্রবর্তন" বলিয়া অভিহিত করা হইয়াছে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) বাংলায় এই সংবিধানের একটি নির্ভরযোগ্য পাঠ ও ইংরাজীতে অনুদিত একটি নির্ভরযোগ্য অনুমোদিত পাঠ থাকিবে এবং উভয় পাঠ নির্ভরযোগ্য বলিয়া গণপরিষদের স্পীকার সার্টিফিকেট প্রদান করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n \n\n১৫২। ব্যাখ্যা \n\n",
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
