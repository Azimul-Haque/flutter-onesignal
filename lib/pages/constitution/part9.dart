import 'package:flutter/material.dart';
import '../../globals.dart';

class PartNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("নবম ভাগঃ বাংলাদেশের কর্মবিভাগ"),
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
            "(নবম ভাগ) বাংলাদেশের কর্মবিভাগ",
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
            "১ম পরিচ্ছেদঃ কর্মবিভাগ",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১৩৩। নিয়োগ ও কর্মের শর্তাবলী'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৩। এই সংবিধানের বিধানাবলী-সাপেক্ষে সংসদ আইনের দ্বারা প্রজাতন্ত্রের কর্মে কর্মচারীদের নিয়োগ ও কর্মের শর্তাবলী নিয়ন্ত্রণ করিতে পারিবেন: \nতবে শর্ত থাকে যে, এই উদ্দেশ্যে আইনের দ্বারা বা অধীন বিধান প্রণীত না হওয়া পর্যন্ত অনুরূপ কর্মচারীদের নিয়োগ ও কর্মের শর্তাবলী নিয়ন্ত্রণ করিয়া বিধিসমূহ-প্রণয়নের ক্ষমতা রাষ্ট্রপতির থাকিবে এবং অনুরূপ যে কোন আইনের বিধানাবলী-সাপেক্ষে অনুরূপ বিধিসমূহ কার্যকর হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৪। কর্মের মেয়াদ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৪। এই সংবিধানের দ্বারা অন্যরূপ বিধান না করা হইয়া থাকিলে প্রজাতন্ত্রের কর্মে নিযুক্ত প্রত্যেক ব্যক্তি রাষ্ট্রপতির সন্তোষানুযায়ী সময়সীমা পর্যন্ত স্বীয় পদে বহাল থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৫। অসামরিক সরকারী কর্মচারীদের বরখাস্ত প্রভৃতি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৫। (১) প্রজাতন্ত্রের কর্মে অসামরিক পদে নিযুক্ত কোন ব্যক্তি তাঁহার নিয়োগকারী কর্তৃপক্ষ-অপেক্ষা অধঃস্তন কোন কর্তৃপক্ষের দ্বারা বরখাস্ত বা অপসারিত বা পদাবনমিত হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) অনুরূপ পদে নিযুক্ত কোন ব্যক্তিকে তাঁহার সম্পর্কে প্রস্তাবিত ব্যবস্থা গ্রহণের বিরুদ্ধে কারণ দর্শাইবার যুক্তিসঙ্গত সুযোগদান না করা পর্যন্ত তাঁহাকে বরখাস্ত বা অপসারিত বা পদাবনমিত করা যাইবে না: \nতবে শর্ত থাকে যে, এই দফা সেই সকল ক্ষেত্রে প্রযোজ্য হইবে না, যেখানে \n(অ) কোন ব্যক্তি যে আচরণের ফলে ফৌজদারী অপরাধে দণ্ডিত হইয়াছেন, সেই আচরণের জন্য তাঁহাকে বরখাস্ত, অপসারিত বা পদাবনমিত করা হইয়াছে; অথবা \n(আ) কোন ব্যক্তিকে বরখাস্ত, অপসারিত বা পদাবনমিত করিবার ক্ষমতাসম্পন্ন কর্তৃপক্ষের নিকট সন্তোষজনকভাবে প্রতীয়মান হয় যে, কোন কারণে- যাহা উক্ত কর্তৃপক্ষ লিপিবদ্ধ করিবেন- উক্ত ব্যক্তিকে কারণ দর্শাইবার সুযোগদান করা যুক্তিসঙ্গতভাবে সম্ভব নহে; অথবা \n(ই) রাষ্ট্রপতির নিকট সন্তোষজনকভাবে প্রতীয়মান হয় যে, রাষ্ট্রের নিরাপত্তার স্বার্থে উক্ত ব্যক্তিকে অনুরূপ সুযোগদান সমীচীন নহে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) অনুরূপ কোন ব্যক্তিকে এই অনুচ্ছেদের (২) দফায় বর্ণিত কারণ দর্শাইবার সুযোগদান করা যুক্তিসঙ্গতভাবে সম্ভব কি না, এইরূপ প্রশ্ন উত্থাপিত হইলে সেই সম্পর্কে তাঁহাকে বরখাস্ত, অপসারিত বা পদাবনমিত করিবার ক্ষমতাসম্পন্ন কর্তৃপক্ষের সিদ্ধান্ত চূড়ান্ত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) যে ক্ষেত্রে কোন ব্যক্তি কোন লিখিত চুক্তির অধীন প্রজাতন্ত্রের কর্মে নিযুক্ত হইয়াছেন এবং উক্ত চুক্তির শর্তাবলী-অনুযায়ী যথাযথ নোটিশের দ্বারা চুক্তিটির অবসান ঘটান হইয়াছে, সেই ক্ষেত্রে চুক্তিটির অনুরূপ অবসানের জন্য তিনি এই অনুচ্ছেদের উদ্দেশ্যসাধনকল্পে পদ হইতে অপসারিত হইয়াছেন বলিয়া গণ্য হইবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৬। কর্মবিভাগ-পুনর্গঠন'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৬। আইনের দ্বারা প্রজাতন্ত্রের কর্মবিভাগসমূহের সৃষ্টি, সংযুক্তকরণ ও একত্রীকরণসহ পুনর্গঠনের বিধান করা যাইবে এবং অনুরূপ আইন প্রজাতন্ত্রের কর্মে নিযুক্ত কোন ব্যক্তির কর্মের শর্তাবলীর তারতম্য করিতে ও তাহা রদ করিতে পারিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          SizedBox(
            height: 3,
          ),
          Text(
            "২য় পরিচ্ছেদঃ সরকারী কর্ম কমিশন",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১৩৭। কমিশন-প্রতিষ্ঠা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৭। আইনের দ্বারা বাংলাদেশের জন্য এক বা একাধিক সরকারী কর্ম কমিশন প্রতিষ্ঠার বিধান করা যাইবে এবং একজন সভাপতিকে ও আইনের দ্বারা যেরূপ নির্ধারিত হইবে, সেইরূপ অন্যান্য সদস্যকে লইয়া প্রত্যেক কমিশন গঠিত হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৮। সদস্য-নিয়োগ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৮। (১) প্রত্যেক সরকারী কর্ম কমিশনের সভাপতি ও অন্যান্য সদস্য রাষ্ট্রপতি কর্তৃক নিযুক্ত হইবেন: \nতবে শর্ত থাকে যে, প্রত্যেক কমিশনের যতদূর সম্ভব অর্ধেক (তবে অর্ধেকের কম নহে) সংখ্যক সদস্য এমন ব্যক্তিগণ হইবেন, যাঁহারা কুড়ি বৎসর বা ততোধিককাল বাংলাদেশের রাষ্ট্রীয় সীমানার মধ্যে যে কোন সময়ে কার্যরত কোন সরকারের কর্মে কোন পদে অধিষ্ঠিত ছিলেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদ কর্তৃক প্রণীত যে কোন আইন-সাপেক্ষে কোন সরকারী কর্ম কমিশনের সভাপতি ও অন্যান্য সদস্যের কর্মের শর্তাবলী রাষ্ট্রপতি আদেশের দ্বারা যেরূপ নির্ধারণ করিবেন, সেইরূপ হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৩৯। পদের মেয়াদ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৩৯। (১) এই অনুচ্ছেদের বিধানাবলী-সাপেক্ষে কোন সরকারী কর্ম কমিশনের সভাপতি বা অন্য কোন সদস্য তাঁহার দায়িত্ব গ্রহণের তারিখ হইতে পাঁচ বৎসর বা তাঁহার পয়ষট্টি বৎসর বয়স পূর্ণ হওয়া ইহার মধ্যে যাহা অগ্রে ঘটে, সেই কাল পর্যন্ত স্বীয় পদে বহাল থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সুপ্রীম কোর্টের কোন বিচারক যেরূপ পদ্ধতি ও কারণে অপসারিত হইতে পারেন, সেইরূপ পদ্ধতি ও কারণ ব্যতীত কোন সরকারী কর্ম কমিশনের সভাপতি বা অন্য কোন সদস্য অপসারিত হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) কোন সরকারী কর্ম কমিশনের সভাপতি বা অন্য কোন সদস্য রাষ্ট্রপতিকে উদ্দেশ করিয়া স্বাক্ষরযুক্ত পত্রযোগে স্বীয় পদ ত্যাগ করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) কর্মাবসানের পর কোন সরকারী কর্ম কমিশনের সদস্য প্রজাতন্ত্রের কর্মে পুনরায় নিযুক্ত হইবার যোগ্য থাকিবেন না, তবে এই অনুচ্ছেদের (১) দফা-সাপেক্ষে \n(ক) কর্মাবসানের পর কোন সভাপতি এক মেয়াদের জন্য পুনর্নিয়োগলাভের যোগ্য থাকিবেন; এবং \n(খ) কর্মাবসানের পর কোন সদস্য (সভাপতি ব্যতীত) এক মেয়াদের জন্য কিংবা কোন সরকারী কর্ম কমিশনের সভাপতিরূপে নিয়োগলাভের যোগ্য থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৪০। কমিশনের দায়িত্ব'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪০। (১) কোন সরকারী কর্ম কমিশনের দায়িত্ব হইবে \n(ক) প্রজাতন্ত্রের কর্মে নিয়োগদানের জন্য উপযুক্ত ব্যক্তিদিগকে মনোনয়নের উদ্দেশ্যে যাচাই ও পরীক্ষা-পরিচালনা; \n(খ) এই অনুচ্ছেদের (২) দফা অনুযায়ী রাষ্ট্রপতি কর্তৃক কোন বিষয় সম্পর্কে কমিশনের পরামর্শ চাওয়া হইলে কিংবা কমিশনের দায়িত্ব-সংক্রান্ত কোন বিষয় কমিশনের নিকট প্রেরণ করা হইলে সেই সম্বন্ধে রাষ্ট্রপতিকে উপদেশ দান; এবং \n(গ) আইনের দ্বারা নির্ধারিত অন্যান্য দায়িত্ব পালন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদ কর্তৃক প্রণীত কোন আইন এবং কোন কমিশনের সহিত পরামর্শক্রমে রাষ্ট্রপতি কর্তৃক প্রণীত কোন প্রবিধানের (যাহা অনুরূপ আইনের সহিত অসমঞ্জস নহে) বিধানাবলী-সাপেক্ষে রাষ্ট্রপতি নিম্নলিখিত ক্ষেত্রসমূহে কোন কমিশনের সহিত পরামর্শ করিবেন: \n(ক) প্রজাতন্ত্রের কর্মের জন্য যোগ্যতা ও তাহাতে নিয়োগের পদ্ধতি সম্পর্কিত বিষয়াদি; \n(খ) প্রজাতন্ত্রের কর্মে নিয়োগদান, উক্ত কর্মের এক শাখা হইতে অন্য শাখায় পদোন্নতিদান ও বদলিকরণ এবং অনুরূপ নিয়োগদান, পদোন্নতিদান বা বদলিকরণের জন্য প্রার্থীর উপযোগিতা-নির্ণয় সম্পর্কে অনুসরণীয় নীতিসমূহ; \n(গ) অবসর ভাতার অধিকারসহ প্রজাতন্ত্রের কর্মের শর্তাবলীকে প্রভাবিত করে, এইরূপ বিষয়াদি; এবং \n(ঘ) প্রজাতন্ত্রের কর্মের শৃঙ্খলামূলক বিষয়াদি।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১৪১। বার্ষিক রিপোর্ট'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪১। (১) প্রত্যেক কমিশন প্রতি বৎসর মার্চ মাসের প্রথম দিবসে বা তাহার পূর্বে পূর্ববর্তী একত্রিশে ডিসেম্বরে সমাপ্ত এক বৎসরে স্বীয় কার্যাবলী সম্বন্ধে রিপোর্ট প্রস্তুত করিবেন এবং তাহা রাষ্ট্রপতির নিকট পেশ করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) রিপোর্টের সহিত একটি স্মারকলিপি থাকিবে, যাহাতে \n(ক) কোন ক্ষেত্রে কমিশনের কোন পরামর্শ গৃহীত না হইয়া থাকিলে সেই ক্ষেত্র এবং পরামর্শ গৃহীত না হইবার কারণ; এবং \n(খ) যে সকল ক্ষেত্রে কমিশনের সহিত পরামর্শ করা উচিত ছিল অথচ পরামর্শ করা হয় নাই, সেই সকল ক্ষেত্র এবং পরামর্শ না করিবার কারণ; \nসম্বন্ধে কমিশন যতদূর অবগত, ততদূর লিপিবদ্ধ করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) যে বৎসর রিপোর্ট পেশ করা হইয়াছে, সেই বৎসর একত্রিশে মার্চের পর অনুষ্ঠিত সংসদের প্রথম বৈঠকে রাষ্ট্রপতি উক্ত রিপোর্ট ও স্মারকলিপি সংসদে উপস্থাপনের ব্যবস্থা করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          SizedBox(
            height: 3,
          ),
          Text(
            "নবম-ক ভাগ জরুরী বিধানাবলী",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১৪১ক। জরুরী-অবস্থা ঘোষণা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১৪১ক। (১) রাষ্ট্রপতির নিকট যদি সন্তোষজনকভাবে প্রতীয়মান হয় যে, এমন জরুরী-অবস্থা বিদ্যমান রহিয়াছে, যাহাতে যুদ্ধ বা বহিরাক্রমণ বা অভ্যন্তরীণ গোলযোগের দ্বারা বাংলাদেশ বা উহার যে কোন অংশের নিরাপত্তা বা অর্থনৈতিক জীবন বিপদের সম্মুখীন, তাহা হইলে তিনি অনধিক একশত কুড়ি দিনের জন্য জরুরী-অবস্থা ঘোষণা করিতে: \nতবে শর্ত থাকে যে, অনুরূপ ঘোষণার বৈধতার জন্য ঘোষণার পূর্বেই প্রধানমন্ত্রীর প্রতি-স্বাক্ষর প্রয়োজন হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) জরুরী-অবস্থার ঘোষণা \n(ক) পরবর্তী কোন ঘোষণার দ্বারা প্রত্যাহার করা যাইবে; (খ) সংসদে উপস্থাপিত হইবে;',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n১৪১খ। জরুরী-অবস্থার সময় সংবিধানের কতিপয় অনুচ্ছেদের বিধান স্থগিতকরণ \n\n১৪১গ। জরুরী-অবস্থার সময় মৌলিক অধিকারসমূহ স্থগিতকরণ",
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
