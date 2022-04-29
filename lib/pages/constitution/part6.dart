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
            title: Text('৯৮। সুপ্রীম কোর্টের অতিরিক্ত বিচারকগণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৯৮। সংবিধানের ৯৪ অনুচ্ছেদের বিধানাবলী সত্ত্বেও রাষ্ট্রপতির নিকট সুপ্রীম কোর্টের কোন বিভাগের বিচারক-সংখ্যা সাময়িকভাবে বৃদ্ধি করা উচিত বলিয়া সন্তোষজনকভাবে প্রতীয়মান হইলে তিনি যথাযথ যোগ্যতাসম্পন্ন এক বা একাধিক ব্যক্তিকে অনধিক দুই বৎসরের জন্য অতিরিক্ত বিচারক নিযুক্ত করিতে পারিবেন, কিংবা তিনি উপযুক্ত বিবেচনা করিলে হাইকোর্ট বিভাগের কোন বিচারককে যে কোন অস্থায়ী মেয়াদের জন্য আপীল বিভাগের আসন গ্রহণের ব্যবস্থা করিতে পারিবেন: \nতবে শর্ত থাকে যে, অতিরিক্ত বিচারকরূপে নিযুক্ত (কোন ব্যক্তিকে এই সংবিধানের ৯৫ অনুচ্ছেদের অধীন বিচারকরূপে নিযুক্ত) হইতে কিংবা বর্তমান অনুচ্ছেদের অধীন আরও এক মেয়াদের জন্য অতিরিক্ত বিচারকরূপে নিযুক্ত হইতে বর্তমান অনুচ্ছেদের কোন কিছুই নিবৃত্ত করিবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "  \n\n১০০। সুপ্রীম কোর্টের আসন \n\n১০১। হাইকোর্ট বিভাগের এখতিয়ার \n\n১০২। কতিপয় আদেশ ও নির্দেশ প্রভৃতি দানের ক্ষেত্রে হাইকোর্ট বিভাগের ক্ষমতা \n\n১০৩। আপীল বিভাগের এখতিয়ার \n\n১০৪। আপীল বিভাগের পরোয়ানা জারী ও নির্বাহ \n\n১০৫। আপীল বিভাগ কর্তৃক রায় বা আদেশ পুনর্বিবেচনা \n\n১০৬। সুপ্রীম কোর্টের উপদেষ্টামূলক এখতিয়ার \n\n১০৭। সুপ্রীম কোর্টের বিধি-প্রণয়ন-ক্ষমতা \n\n১০৮। 'কোর্ট অব রেকর্ড' রূপে সুপ্রীম কোর্ট \n\n১০৯। আদালতসমূহের উপর তত্ত্বাবধান ও নিয়ন্ত্রণ \n\n১১০। অধস্তন আদালত হইতে হাইকোর্ট বিভাগে মামলা স্থানান্তর \n\n১১১। সুপ্রীম কোর্টের রায়ের বাধ্যতামূলক কার্যকরতা \n\n১১২। সুপ্রীম কোর্টের সহায়তা \n\n১১৩। সুপ্রীম কোর্টের কর্মচারীগণ \n\n\n২য় পরিচ্ছেদঃ অধস্তন আদালত \n\n১১৪। অধস্তন আদালত-সমূহ প্রতিষ্ঠা \n\n১১৫। অধস্তন আদালতে নিয়োগ \n\n১১৬। অধস্তন আদালতসমূহের নিয়ন্ত্রণ ও শৃঙ্খলা \n\n১১৬ক। বিচারবিভাগীয় কর্মচারীগণ বিচারকার্য পালনের ক্ষেত্রে স্বাধীন \n\n\n৩য় পরিচ্ছেদঃ প্রশাসনিক ট্রাইব্যুনাল \n\n১১৭। প্রশাসনিক ট্রাইব্যুনালসমূহ \n\n\nষষ্ঠ ক ভাগ-জাতীয়দল [সংবিধান (পঞ্চদশ সংশোধন) আইন, ২০১১ (২০১১ সনের ১৪ নং আইন)-এর ৪১ ধারাবলে বিলুপ্ত।]",
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
