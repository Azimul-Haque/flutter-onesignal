import 'package:flutter/material.dart';
import '../../globals.dart';

class PartSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ষষ্ঠ ভাগঃ বিচারবিভাগ"),
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
            "(ষষ্ঠ ভাগ) বিচারবিভাগ",
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
            "১ম পরিচ্ছেদঃ সুপ্রীম কোর্ট",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('৯৪। সুপ্রীম কোর্ট প্রতিষ্ঠা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৯৪। (১) "বাংলাদেশ সুপ্রীম কোর্ট" নামে বাংলাদেশের একটি সর্বোচ্চ আদালত থাকিবে এবং আপীল বিভাগ ও হাইকোর্ট বিভাগ লইয়া তাহা গঠিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) প্রধান বিচারপতি (যিনি "বাংলাদেশের প্রধান বিচারপতি" নামে অভিহিত হইবেন) এবং প্রত্যেক বিভাগে আসন গ্রহণের জন্য রাষ্ট্রপতি যেরূপ সংখ্যক বিচারক নিয়োগের প্রয়োজন বোধ করিবেন, সেইরূপ সংখ্যক অন্যান্য বিচারক লইয়া সুপ্রীম কোর্ট গঠিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) প্রধান বিচারপতি ও আপীল বিভাগে নিযুক্ত বিচারকগণ কেবল উক্ত বিভাগে এবং অন্যান্য বিচারক কেবল হাইকোর্ট বিভাগে আসন গ্রহণ করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) এই সংবিধানের বিধানাবলী-সাপেক্ষে প্রধান বিচারপতি এবং অন্যান্য বিচারক বিচারকার্য পালনের ক্ষেত্রে স্বাধীন থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৯৫। বিচারক-নিয়োগ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৯৫। (১) প্রধান বিচারপতি রাষ্ট্রপতি কর্তৃক নিযুক্ত হইবেন এবং প্রধান বিচারপতির সহিত পরামর্শ করিয়া রাষ্ট্রপতি অন্যান্য বিচারককে নিয়োগদান করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) কোন ব্যক্তি বাংলাদেশের নাগরিক না হইলে, এবং (ক) সুপ্রীম কোর্টে অন্যূন দশ বৎসরকাল এ্যাডভোকেট না থাকিয়া থাকিলে; অথবা (খ) বাংলাদেশের রাষ্ট্রীয় সীমানার মধ্যে অন্যূন দশ বৎসর কোন বিচার বিভাগীয় পদে অধিষ্ঠান না করিয়া থাকিলে; অথবা (গ) সুপ্রীমকোর্টের বিচারক পদে নিয়োগলাভের জন্য আইনের দ্বারা নির্ধারিত যোগ্যতা না থাকিয়া থাকিলে ; তিনি বিচারকপদে নিয়োগ লাভের যোগ্য হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) এই অনুচ্ছেদে ‘‘সুপ্রীম কোর্ট’’ বলিতে এই সংবিধান প্রবর্তনের পূর্বে যে কোন সময়ে বাংলাদেশের রাষ্ট্রীয় সীমানার মধ্যে যে আদালত হাইকোর্ট হিসাবে এখতিয়ার প্রয়োগ করিয়াছে, সেই আদালত অন্তর্ভুক্ত হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৯৬। বিচারকের পদের মেয়াদ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৯৬। (১) এই অনুচ্ছেদের অন্যান্য বিধানাবলী সাপেক্ষে কোন বিচারক সাতষট্টি বৎসর বয়স পূর্ণ হওয়া পর্যন্ত স্বীয় পদে বহাল থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) প্রমাণিত অসদাচরণ বা অসামর্থ্যের কারণে সংসদের মোট সদস্য-সংখ্যার অন্যূন দুই-তৃতীয়াংশ গরিষ্ঠতার দ্বারা সমর্থিত সংসদের প্রস্তাবক্রমে প্রদত্ত রাষ্ট্রপতির আদেশ ব্যতীত কোন বিচারককে অপসারিত করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) এই অনুচ্ছেদের (২) দফার অধীন প্রস্তাব সম্পর্কিত পদ্ধতি এবং কোন বিচারকের অসদাচরণ বা অসামর্থ্য সম্পর্কে তদন্ত ও প্রমাণের পদ্ধতি সংসদ আইনের দ্বারা নিয়ন্ত্রণ করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) কোন বিচারক রাষ্ট্রপতিকে উদ্দেশ করিয়া স্বাক্ষরযুক্ত পত্রযোগে স্বীয় পদ ত্যাগ করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৯৭। অস্থায়ী প্রধান বিচারপতি নিয়োগ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৯৭। প্রধান বিচারপতির পদ শূন্য হইলে কিংবা অনুপস্থিতি, অসুস্থতা বা অন্য কোন কারণে প্রধান বিচারপতি তাঁহার দায়িত্বপালনে অসমর্থ বলিয়া রাষ্ট্রপতির নিকট সন্তোষজনকভাবে প্রতীয়মান হইলে ক্ষেত্রমত অন্য কোন ব্যক্তি অনুরূপ পদে যোগদান না করা পর্যন্ত কিংবা প্রধান বিচারপতি স্বীয় কার্যভার পুনরায় গ্রহণ না করা পর্যন্ত আপীল বিভাগের অন্যান্য বিচারকের মধ্যে যিনি কর্মে প্রবীণতম, তিনি অনুরূপ কার্যভার পালন করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৯৮। সুপ্রীম কোর্টের অতিরিক্ত বিচারকগণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৯৮। সংবিধানের ৯৪ অনুচ্ছেদের বিধানাবলী সত্ত্বেও রাষ্ট্রপতির নিকট সুপ্রীম কোর্টের কোন বিভাগের বিচারক-সংখ্যা সাময়িকভাবে বৃদ্ধি করা উচিত বলিয়া সন্তোষজনকভাবে প্রতীয়মান হইলে তিনি যথাযথ যোগ্যতাসম্পন্ন এক বা একাধিক ব্যক্তিকে অনধিক দুই বৎসরের জন্য অতিরিক্ত বিচারক নিযুক্ত করিতে পারিবেন, কিংবা তিনি উপযুক্ত বিবেচনা করিলে হাইকোর্ট বিভাগের কোন বিচারককে যে কোন অস্থায়ী মেয়াদের জন্য আপীল বিভাগের আসন গ্রহণের ব্যবস্থা করিতে পারিবেন: \nতবে শর্ত থাকে যে, অতিরিক্ত বিচারকরূপে নিযুক্ত (কোন ব্যক্তিকে এই সংবিধানের ৯৫ অনুচ্ছেদের অধীন বিচারকরূপে নিযুক্ত) হইতে কিংবা বর্তমান অনুচ্ছেদের অধীন আরও এক মেয়াদের জন্য অতিরিক্ত বিচারকরূপে নিযুক্ত হইতে বর্তমান অনুচ্ছেদের কোন কিছুই নিবৃত্ত করিবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৯৯। অবসর গ্রহণের পর বিচারগণের অক্ষমতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৯৯। (১) কোন ব্যক্তি (এই সংবিধানের ৯৮ অনুচ্ছেদের বিধানাবলী-অনুসারে অতিরিক্ত বিচারকরুপে দায়িত্ব পালন ব্যতীত) বিচারকরুপে দায়িত্ব পালন করিয়া থাকিলে উক্ত পদ হইতে অবসর গ্রহণের বা অপসারিত হইবার পর তিনি কোন আদালত বা কোন কর্তৃপক্ষের নিকট ওকালতি বা কার্য করিবেন না এবং বিচার বিভাগীয় বা আধা-বিচার বিভাগীয় পদ ব্যতীত প্রজাতন্ত্রের কর্মে কোন লাভজনক পদে নিয়োগ লাভের যোগ্য হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) (১) দফায় যাহা কিছুই থাকুক না কেন, কোন ব্যক্তি হাইকোর্ট বিভাগের বিচারক পদে বহাল থাকিলে উক্ত পদ হইতে অবসর গ্রহণের পর তিনি আপীল বিভাগে ওকালতি বা কার্য করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১০০। সুপ্রীম কোর্টের আসন'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১০০। রাজধানীতে সুপ্রীম কোর্টের স্থায়ী আসন থাকিবে, তবে রাষ্ট্রপতির অনুমোদন লইয়া প্রধান বিচারপতি সময়ে সময়ে অন্য যে স্থান বা স্থানসমূহ নির্ধারণ করিবেন, সেই স্থান বা স্থানসমূহে হাইকোর্ট বিভাগের অধিবেশন অনুষ্ঠিত হইতে পারিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১০১। হাইকোর্ট বিভাগের এখতিয়ার'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১০১। এই সংবিধান বা অন্য কোন আইনের দ্বারা হাইকোর্ট বিভাগের উপর যেরুপ আদি, আপীল ও অন্য প্রকার এখতিয়ার ও ক্ষমতা অর্পিত হইয়াছে, উক্ত বিভাগের সেইরুপ এখতিয়ার ও ক্ষমতা থাকিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text(
                '১০২। কতিপয় আদেশ ও নির্দেশ প্রভৃতি দানের ক্ষেত্রে হাইকোর্ট বিভাগের ক্ষমতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১০২।(১) কোন সংক্ষুব্ধ ব্যক্তির আবেদনক্রমে এই সংবিধানের তৃতীয় ভাগের দ্বারা অর্পিত অধিকারসমূহের যে কোন একটি বলবৎ করিবার জন্য প্রজাতন্ত্রের বিষয়াবলীর সহিত সম্পর্কিত কোন দায়িত্ব পালনকারী ব্যক্তিসহ যে কোন ব্যক্তি বা কর্তৃপক্ষকে হাইকোর্ট বিভাগ উপযুক্ত নির্দেশাবলী বা আদেশাবলী দান করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) হাইকোর্ট বিভাগের নিকট যদি সন্তোষজনকভাবে প্রতীয়মান হয় যে, আইনের দ্বারা অন্য কোন সমফলপ্রদ বিধান করা হয় নাই, তাহা হইলে \n(ক) যে কোন সংক্ষুব্ধ ব্যক্তির আবেদনক্রমে- \n(অ) প্রজাতন্ত্র বা কোন স্থানীয় কর্তৃপক্ষের বিষয়াবলীর সহিত সংশ্লিষ্ট যে কোন দায়িত্ব পালনে রত ব্যক্তিকে আইনের দ্বারা অনুমোদিত নয়, এমন কোন কার্য করা হইতে বিরত রাখিবার জন্য কিংবা আইনের দ্বারা তাঁহার করণীয় কার্য করিবার জন্য নির্দেশ প্রদান করিয়া, অথবা \n(আ) প্রজাতন্ত্র বা কোন স্থানীয় কর্তৃপক্ষের বিষয়াবলীর সহিত সংশ্লিষ্ট যে কোন দায়িত্ব পালনে রত ব্যক্তির কৃত কোন কার্য বা গৃহীত কোন কার্যধারা আইনসংগত কর্তৃত্ব ব্যতিরেকে করা হইয়াছে বা গৃহীত হইয়াছে ও তাঁহার কোন আইনগত কার্যকরতা নাই বলিয়া ঘোষণা করিয়া উক্ত বিভাগ আদেশদান করিতে পারিবেন; অথবা \n(খ) যে কোন ব্যক্তির আবেদনক্রমে- \n(অ) আইনসংগত কর্তৃত্ব ব্যতিরেকে বা বেআইনী উপায়ে কোন ব্যক্তিকে প্রহরায় আটক রাখা হয় নাই বলিয়া যাহাতে উক্ত বিভাগের নিকট সন্তোষজনকভাবে প্রতীয়মান হইতে পারে, সেইজন্য প্রহরায় আটক উক্ত ব্যক্তিকে উক্ত বিভাগের সম্মুখে আনয়নের নির্দেশ প্রদান করিয়া, অথবা \n(আ) কোন সরকারি পদে আসীন বা আসীন বলিয়া বিবেচিত কোন ব্যক্তিকে তিনি কোন্ কর্তৃত্ববলে অনুরূপ পদমর্যাদায় অধিষ্ঠানের দাবী করিতেছেন, তাহা প্রদর্শনের নির্দেশ প্রদান করিয়া উক্ত বিভাগ আদেশদান করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) উপরি-উক্ত দফাসমূহে যাহা বলা হইয়াছে, তাহা সত্ত্বেও এই সংবিধানের ৪৭ অনুচেছদ প্রযোজ্য হয়, এইরুপ কোন আইনের ক্ষেত্রে বর্তমান অনুচ্ছেদের অধীন অন্তর্বর্তীকালীন বা অন্য কোন আদেশ দানের ক্ষমতা হাইকোর্ট বিভাগের থাকিবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) এই অনুচ্ছেদের (১) দফা কিংবা এই অনুচ্ছেদের (২) দফার (ক) উপ-দফার অধীন কোন আবেদনক্রমে যে ক্ষেত্রে অন্তর্বর্তী আদেশ প্রার্থনা করা হইয়াছে এবং অনুরুপ অর্ন্তবর্তী আদেশ \n(ক) যেখানে উন্নয়ন কর্মসূচী বাস্তবায়নের জন্য কোন ব্যবস্থা কিংবা কোন উন্নয়নমূলক কার্যের প্রতিকূলতা বা বাধা সৃষ্টি করিতে পারে; অথবা \n(খ) যেখানে অন্য কোনভাবে জনস্বার্থের পক্ষে ক্ষতিকর হইতে পারে সেইখানে অ্যাটর্নি-জেনারেলকে উক্ত আবেদন সম্পর্কে যুক্তিসঙ্গত নোটিশদান এবং অ্যাটর্নি-জেনারেলের (কিংবা এই বিষয়ে তাহার দ্বারা ভারপ্রাপ্ত অন্য কোন এ্যাডভোকেটের) বক্তব্য শ্রবণ না করা পর্যন্ত এবং এই দফার (ক) বা (খ) উপ-দফায় উল্লিখিত প্রতিক্রিয়া সৃষ্টি করিবে না বলিয়া হাইকোর্ট বিভাগের নিকট সন্তোষজনকভাবে প্রতীয়মান না হওয়া পর্যন্ত উক্ত বিভাগ কোন অন্তর্বর্তী আদেশদান করিবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৫) প্রসংগের প্রয়োজনে অন্যরূপ না হইলে এই অনুচ্ছেদে ‘‘ব্যক্তি’’ বলিতে সংবিধিবদ্ধ সরকারী কর্তৃপক্ষ ও বাংলাদেশের প্রতিরক্ষা কর্মবিভাগসমূহ অথবা কোন শৃংখলা-বাহিনী সংক্রান্ত আইনের অধীন প্রতিষ্ঠিত কোন আদালত বা ট্রাইব্যুনাল ব্যতীত কিংবা এই সংবিধানের ১১৭ অনুচ্ছেদ প্রযোজ্য হয়, এইরুপ কোন ট্রাইব্যুনাল ব্যতীত যে কোন আদালত বা ট্রাইব্যুনাল অন্তর্ভুক্ত হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১০৩। আপীল বিভাগের এখতিয়ার'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১০৩। (১) হাইকোর্ট বিভাগের রায়, ডিক্রী, আদেশ বা দণ্ডাদেশের বিরুদ্ধে আপীল শুনানীর ও তাহা নিষ্পত্তির এখতিয়ার আপীল বিভাগের থাকিবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) হাইকোর্ট বিভাগের রায়, ডিক্রী, আদেশ বা দণ্ডাদেশের বিরুদ্ধে আপীল বিভাগের নিকট সেই ক্ষেত্রে অধিকারবলে আপীল করা যাইবে, যে ক্ষেত্রে হাইকোর্ট বিভাগ \n(ক) এই মর্মে সার্টিফিকেট দান করিবেন যে, মামলাটির সহিত এই সংবিধান-ব্যাখ্যার বিষয়ে আইনের গুরুত্বপূর্ণ প্রশ্ন জড়িত রহিয়াছে; অথবা \n(খ) কোন মৃত্যুদণ্ড বহাল করিয়াছেন কিংবা কোন ব্যক্তিকে মৃত্যুদণ্ডে বা যাবজ্জীবন কারাদণ্ডে দণ্ডিত করিয়াছেন ; অথবা \n(গ) উক্ত বিভাগের অবমাননার জন্য কোন ব্যক্তিকে দণ্ডদান করিয়াছেন; \nএবং সংসদে আইন-দ্বারা যেরূপ বিধান করা হইবে, সেইরূপ অন্যান্য ক্ষেত্রে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১০৪। আপীল বিভাগের পরোয়ানা জারী ও নির্বাহ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১০৪। কোন ব্যক্তির হাজিরা কিংবা কোন দলিলপত্র উদ্ঘাটন বা দাখিল করিবার আদেশসহ আপীল বিভাগের নিকট বিচারাধীন যে কোন মামলা বা বিষয়ে সম্পূর্ণ ন্যায়বিচারের জন্য যেরূপ প্রয়োজনীয় হইতে পারে, উক্ত বিভাগ সেইরূপ নির্দেশ, আদেশ, ডিক্রী বা রীট জারী করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১০৫। আপীল বিভাগ কর্তৃক রায় বা আদেশ পুনর্বিবেচনা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১০৫। সংসদের যে কোন আইনের বিধানাবলী-সাপেক্ষে এবং আপীল বিভাগ কর্তৃক প্রণীত যে কোন বিধি-সাপেক্ষে আপীল বিভাগের কোন ঘোষিত রায় বা প্রদত্ত আদেশ পুনর্বিবেচনার ক্ষমতা উক্ত বিভাগের থাকিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১০৬। সুপ্রীম কোর্টের উপদেষ্টামূলক এখতিয়ার'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১০৫। সংসদের যে কোন আইনের বিধানাবলী-সাপেক্ষে এবং আপীল বিভাগ কর্তৃক প্রণীত যে কোন বিধি-সাপেক্ষে আপীল বিভাগের কোন ঘোষিত রায় বা প্রদত্ত আদেশ পুনর্বিবেচনার ক্ষমতা উক্ত বিভাগের থাকিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n \n\n \n\n১০৭। সুপ্রীম কোর্টের বিধি-প্রণয়ন-ক্ষমতা \n\n১০৮। 'কোর্ট অব রেকর্ড' রূপে সুপ্রীম কোর্ট \n\n১০৯। আদালতসমূহের উপর তত্ত্বাবধান ও নিয়ন্ত্রণ \n\n১১০। অধস্তন আদালত হইতে হাইকোর্ট বিভাগে মামলা স্থানান্তর \n\n১১১। সুপ্রীম কোর্টের রায়ের বাধ্যতামূলক কার্যকরতা \n\n১১২। সুপ্রীম কোর্টের সহায়তা \n\n১১৩। সুপ্রীম কোর্টের কর্মচারীগণ \n\n\n২য় পরিচ্ছেদঃ অধস্তন আদালত \n\n১১৪। অধস্তন আদালত-সমূহ প্রতিষ্ঠা \n\n১১৫। অধস্তন আদালতে নিয়োগ \n\n১১৬। অধস্তন আদালতসমূহের নিয়ন্ত্রণ ও শৃঙ্খলা \n\n১১৬ক। বিচারবিভাগীয় কর্মচারীগণ বিচারকার্য পালনের ক্ষেত্রে স্বাধীন \n\n\n৩য় পরিচ্ছেদঃ প্রশাসনিক ট্রাইব্যুনাল \n\n১১৭। প্রশাসনিক ট্রাইব্যুনালসমূহ \n\n\nষষ্ঠ ক ভাগ-জাতীয়দল [সংবিধান (পঞ্চদশ সংশোধন) আইন, ২০১১ (২০১১ সনের ১৪ নং আইন)-এর ৪১ ধারাবলে বিলুপ্ত।]",
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
