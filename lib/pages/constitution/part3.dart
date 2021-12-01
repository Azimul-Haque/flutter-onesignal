import 'package:flutter/material.dart';
import '../../globals.dart';

class PartThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("তৃতীয় ভাগঃ মৌলিক অধিকার"),
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
            "(তৃতীয় ভাগ) মৌলিক অধিকার",
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
            title: Text('২৬। মৌলিক অধিকারের সহিত অসমঞ্জস আইন বাতিল'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '২৬। (১) এই ভাগের বিধানাবলীর সহিত অসমঞ্জস সকল প্রচলিত আইন যতখানি অসামঞ্জস্যপূর্ণ, এই সংবিধান-প্রবর্তন হইতে সেই সকল আইনের ততখানি বাতিল হইয়া যাইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) রাষ্ট্র এই ভাগের কোন বিধানের সহিত অসমঞ্জস কোন আইন প্রণয়ন করিবেন না এবং অনুরূপ কোন আইন প্রণীত হইলে তাহা এই ভাগের কোন বিধানের সহিত যতখানি অসামঞ্জস্যপূর্ণ, ততখানি বাতিল হইয়া যাইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) সংবিধানের ১৪২ অনুচ্ছেদের অধীন প্রণীত সংশোধনের ক্ষেত্রে এই অনুচ্ছেদের কোন কিছুই প্রযোজ্য হইবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('২৭। আইনের দৃষ্টিতে সমতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '২৭। সকল নাগরিক আইনের দৃষ্টিতে সমান এবং আইনের সমান আশ্রয় লাভের অধিকারী।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('২৮। ধর্ম, প্রভৃতি কারণে বৈষম্য'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '২৮। (১) কেবল ধর্ম, গোষ্ঠী, বর্ণ, নারীপুরুষভেদ বা জন্মস্থানের কারণে কোন নাগরিকের প্রতি রাষ্ট্র বৈষম্য প্রদর্শন করিবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) রাষ্ট্র ও গণজীবনের সর্বস্তরে নারীপুরুষের সমান অধিকার লাভ করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) কেবল ধর্ম, গোষ্ঠী, বর্ণ, নারী পুরুষভেদ বা জন্মস্থানের কারণে জনসাধারণের কোন বিনোদন বা বিশ্রামের স্থানে প্রবেশের কিংবা কোন শিক্ষা-প্রতিষ্ঠানে ভর্তির বিষয়ে কোন নাগরিককে কোনরূপ অক্ষমতা, বাধ্যবাধকতা, বাধা বা শর্তের অধীন করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) নারী বা শিশুদের অনুকূলে কিংবা নাগরিকদের যে কোন অনগ্রসর অংশের অগ্রগতির জন্য বিশেষ বিধান-প্রণয়ন হইতে এই অনুচ্ছেদের কোন কিছুই রাষ্ট্রকে নিবৃত্ত করিবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('২৯। সরকারী নিয়োগ-লাভে সুযোগের সমতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '২৯। (১) প্রজাতন্ত্রের কর্মে নিয়োগ বা পদ-লাভের ক্ষেত্রে সকল নাগরিকের জন্য সুযোগের সমতা থাকিবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) কেবল ধর্ম, গোষ্ঠী, বর্ণ, নারী-পুরুষভেদ বা জন্মস্থানের কারণে কোন নাগরিক প্রজাতন্ত্রের কর্মে নিয়োগ বা পদ-লাভের অযোগ্য হইবেন না কিংবা সেই ক্ষেত্রে তাঁহার প্রতি বৈষম্য প্রদর্শন করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) এই অনুচ্ছেদের কোন কিছুই-',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(ক) নাগরিকদের যে কোন অনগ্রসর অংশ যাহাতে প্রজাতন্ত্রের কর্মে উপযুক্ত প্রতিনিধিত্ব লাভ করিতে পারেন, সেই উদ্দেশ্যে তাঁহাদের অনুকূলে বিশেষ বিধান-প্রণয়ন করা হইতে, \n(খ) কোন ধর্মীয় বা উপ-সমপ্রদায়গত প্রতিষ্ঠানে উক্ত ধর্মাবলম্বী বা উপ-সমপ্রদায়ভুক্ত ব্যক্তিদের জন্য নিয়োগ সংরক্ষণের বিধান-সংবলিত যে কোন আইন কার্যকর করা হইতে, \n(গ) যে শ্রেণীর কর্মের বিশেষ প্রকৃতির জন্য তাহা নারী বা পুরুষের পক্ষে অনুপযোগী বিবেচিত হয়, সেইরূপ যে কোন শ্রেণীর নিয়োগ বা পদ যথাক্রমে পুরুষ বা নারীর জন্য সংরক্ষণ করা হইতে, রাষ্ট্রকে নিবৃত্ত করিবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩০। বিদেশী, খেতাব, প্রভৃতি গ্রহণ নিষিদ্ধকরণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩০। রাষ্ট্রপতির পূর্বানুমোদন ব্যতীত কোন নাগরিক কোন বিদেশী রাষ্ট্রের নিকট হইতে কোন উপাধি, খেতাব, সম্মান, পুরস্কার বা ভূষণ গ্রহণ করিবেন না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩১। আইনের আশ্রয়-লাভের অধিকার'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩১। আইনের আশ্রয়লাভ এবং আইনানুযায়ী ও কেবল আইনানুযায়ী ব্যবহারলাভ যে কোন স্থানে অবস্থানরত প্রত্যেক নাগরিকের এবং সাময়িকভাবে বাংলাদেশে অবস্থানরত অপরাপর ব্যক্তির অবিচ্ছেদ্য অধিকার এবং বিশেষতঃ আইনানুযায়ী ব্যতীত এমন কোন ব্যবস্থা গ্রহণ করা যাইবে না, যাহাতে কোন ব্যক্তির জীবন, স্বাধীনতা, দেহ, সুনাম বা সম্পত্তির হানি ঘটে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩২। জীবন ও ব্যক্তি-স্বাধীনতার অধিকাররক্ষণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩২। আইনানুযায়ী ব্যতীত জীবন ও ব্যক্তি-স্বাধীনতা হইতে কোন ব্যক্তিকে বঞ্চিত করা যাইবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩২। জীবন ও ব্যক্তি-স্বাধীনতার অধিকাররক্ষণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩২। আইনানুযায়ী ব্যতীত জীবন ও ব্যক্তি-স্বাধীনতা হইতে কোন ব্যক্তিকে বঞ্চিত করা যাইবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "৩৩। গ্রেপ্তার ও আটক সম্পর্কে রক্ষাকবচ \n\n৩৪। জবরদস্তি-শ্রম নিষিদ্ধকরণ \n\n৩৫। বিচার ও দন্ড সম্পর্কে রক্ষণ \n\n৩৬। চলাফেরার স্বাধীনতা \n\n৩৭। সমাবেশের স্বাধীনতা \n\n৩৮। সংগঠনের স্বাধীনতা \n\n৩৯। চিন্তা ও বিবেকের স্বাধীনতা এবং বাক্-স্বাধীনতা \n\n৪০। পেশা বা বৃত্তির স্বাধীনতা \n\n৪১। ধর্মীয় স্বাধীনতা \n\n৪২। সম্পত্তির অধিকার \n\n৪৩। গৃহ ও যোগাযোগের রক্ষণ \n\n৪৪। মৌলিক অধিকার বলবৎকরণ \n\n৪৫। শৃঙ্খলামূলক আইনের ক্ষেত্রে অধিকারের পরিবর্তন \n\n৪৬। দায়মুক্তি-বিধানের ক্ষমতা \n\n৪৭। কতিপয় আইনের হেফাজত \n\n৪৭ক। সংবিধানের কতিপয় বিধানের অপ্রযোজ্যতা",
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
