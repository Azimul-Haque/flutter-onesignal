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
            title: Text('৩৩। গ্রেপ্তার ও আটক সম্পর্কে রক্ষাকবচ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৩। (১) গ্রেপ্তারকৃত কোন ব্যক্তিকে যথাসম্ভব শীঘ্র গ্রেপ্তারের কারণ জ্ঞাপন না করিয়া প্রহরায় আটক রাখা যাইবে না এবং উক্ত ব্যক্তিকে তাঁহার মনোনীত আইনজীবীর সহিত পরামর্শের ও তাঁহার দ্বারা আত্মপক্ষ সমর্থনের অধিকার হইতে বঞ্চিত করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) গ্রেপ্তারকৃত ও প্রহরায় আটক প্রত্যেক ব্যক্তিকে নিকটতম ম্যাজিস্ট্রেটের সম্মুখে গ্রেপ্তারের চব্বিশ ঘন্টার মধ্যে গ্রেপ্তারের স্থান হইতে ম্যাজিস্ট্রেটের আদালতে আনয়নের জন্য প্রয়োজনীয় সময় ব্যতিরেকে) হাজির করা হইবে এবং ম্যাজিস্ট্রেটের আদেশ ব্যতীত তাঁহাকে তদতিরিক্তকাল প্রহরায় আটক রাখা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) এই অনুচ্ছেদের (১) ও (২) দফার কোন কিছুই সেই ব্যক্তির ক্ষেত্রে প্রযোজ্য হইবে না, \n(ক) যিনি বর্তমান সময়ের জন্য বিদেশী শত্রু, অথবা \n(খ) যাঁহাকে নিবর্তনমূলক আটকের বিধান-সংবলিত কোন আইনের অধীন গ্রেপ্তার করা হইয়াছে বা আটক করা হইয়াছে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) নিবর্তনমূলক আটকের বিধান-সংবলিত কোন আইন কোন ব্যক্তিকে ছয় মাসের অধিককাল আটক রাখিবার ক্ষমতা প্রদান করিবে না যদি সুপ্রীম কোর্টের বিচারক রহিয়াছেন বা ছিলেন কিংবা সুপ্রীম কোর্টের বিচারকপদে নিয়োগলাভের যোগ্যতা রাখেন, এইরূপ দুইজন এবং প্রজাতন্ত্রের কর্মে নিযুক্ত একজন প্রবীণ কর্মচারীর সমন্বয়ে গঠিত কোন উপদেষ্টা-পর্ষদ্ উক্ত ছয় মাস অতিবাহিত হইবার পূর্বে তাঁহাকে উপস্থিত হইয়া বক্তব্য পেশ করিবার সুযোগদানের পর রিপোর্ট প্রদান না করিয়া থাকেন যে, পর্ষদের মতে উক্ত ব্যক্তিকে তদতিরিক্তকাল আটক রাখিবার পর্যাপ্ত কারণ রহিয়াছে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৫) নির্বতনমূলক আটকের বিধান-সংবলিত কোন আইনের অধীন প্রদত্ত আদেশ অনুযায়ী কোন ব্যক্তিকে আটক করা হইলে আদেশদানকারী কর্তৃপক্ষ তাঁহাকে যথাসম্ভব শীঘ্র আদেশদানের কারণ জ্ঞাপন করিবেন এবং উক্ত আদেশের বিরুদ্ধে বক্তব্য-প্রকাশের জন্য তাঁহাকে যত সত্বর সম্ভব সুযোগদান করিবেন: \nতবে শর্ত থাকে যে, আদেশদানকারী কর্তৃপক্ষের বিবেচনায় তথ্যাদি-প্রকাশ জনস্বার্থবিরোধী বলিয়া মনে হইলে অনুরূপ কর্তৃপক্ষ তাহা প্রকাশে অস্বীকৃতি জ্ঞাপন করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৬) উপদেষ্টা-পর্ষদ কর্তৃক এই অনুচ্ছেদের (৪) দফার অধীন তদন্তের জন্য অনুসরণীয় পদ্ধতি সংসদ আইনের দ্বারা নির্ধারণ করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩৪। জবরদস্তি-শ্রম নিষিদ্ধকরণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৪। (১) সকল প্রকার জবরদস্তি-শ্রম নিষিদ্ধ; এবং এই বিধান কোনভাবে লংঘিত হইলে তাহা আইনতঃ দণ্ডনীয় অপরাধ বলিয়া গণ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) এই অনুচ্ছেদের কোন কিছুই সেই সকল বাধ্যতামূলক শ্রমের ক্ষেত্রে প্রযোজ্য হইবে না, যেখানে \n(ক) ফৌজদারী অপরাধের জন্য কোন ব্যক্তি আইনতঃ দণ্ডভোগ করিতেছেন; অথবা \n(খ) জনগণের উদ্দেশ্যসাধনকল্পে আইনের দ্বারা তাহা আবশ্যক হইতেছে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩৫। বিচার ও দন্ড সম্পর্কে রক্ষণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৫। (১) অপরাধের দায়যুক্ত কার্যসংঘটনকালে বলবৎ ছিল, এইরূপ আইন ভঙ্গ করিবার অপরাধ ব্যতীত কোন ব্যক্তিকে দোষী সাব্যস্ত করা যাইবে না এবং অপরাধ-সংঘটনকালে বলবৎ সেই আইনবলে যে দণ্ড দেওয়া যাইতে পারিত, তাঁহাকে তাহার অধিক বা তাহা হইতে ভিন্ন দণ্ড দেওয়া যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) এক অপরাধের জন্য কোন ব্যক্তিকে একাধিকবার ফৌজদারীতে সোপর্দ ও দণ্ডিত করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) ফৌজদারী অপরাধের দায়ে অভিযুক্ত প্রত্যেক ব্যক্তি আইনের দ্বারা প্রতিষ্ঠিত স্বাধীন ও নিরপেক্ষ আদালত বা ট্রাইব্যুনালে দ্রুত ও প্রকাশ্য বিচারলাভের অধিকারী হইবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) কোন অপরাধের দায়ে অভিযুক্ত ব্যক্তিকে নিজের বিরুদ্ধে সাক্ষ্য দিতে বাধ্য করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৫) কোন ব্যক্তিকে যন্ত্রণা দেওয়া যাইবে না কিংবা নিষ্ঠুর, অমানুষিক বা লাঞ্ছনাকর দণ্ড দেওয়া যাইবে না কিংবা কাহারও সহিত অনুরূপ ব্যবহার করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৬) প্রচলিত আইনে নির্দিষ্ট কোন দণ্ড বা বিচারপদ্ধতি সম্পর্কিত কোন বিধানের প্রয়োগকে এই অনুচ্ছেদের (৩) বা (৫) দফার কোন কিছুই প্রভাবিত করিবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৩৬। চলাফেরার স্বাধীনতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৬। জনস্বার্থে আইনের দ্বারা আরোপিত যুক্তিসঙ্গত বাধানিষেধ- সাপেক্ষে বাংলাদেশের সর্বত্র অবাধ চলাফেরা, ইহার যে কোন স্থানে বসবাস ও বসতিস্থাপন এবং বাংলাদেশ ত্যাগ ও বাংলাদেশে পুনঃপ্রবেশ করিবার অধিকার প্রত্যেক নাগরিকের থাকিবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩৭। সমাবেশের স্বাধীনতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৭। জনশৃঙ্খলা বা জনস্বাস্থ্যের স্বার্থে আইনের দ্বারা আরোপিত যুক্তিসঙ্গত বাধানিষেধ-সাপেক্ষে শান্তিপূর্ণভাবে ও নিরস্ত্র অবস্থায় সমবেত হইবার এবং জনসভা ও শোভাযাত্রায় যোগদান করিবার অধিকার প্রত্যেক নাগরিকের থাকিবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩৮। সংগঠনের স্বাধীনতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৮।জনশৃঙ্খলা ও নৈতিকতার স্বার্থে আইনের দ্বারা আরোপিত যুক্তিসঙ্গত বাধা-নিষেধ সাপেক্ষে সমিতি বা সংঘ গঠন করিবার অধিকার প্রত্যেক নাগরিকের থাকিবেঃ',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                'তবে শর্ত থাকে যে, কোন ব্যক্তির উক্তরুপ সমিতি বা সংঘ গঠন করিবার কিংবা উহার সদস্য হইবার অধিকার থাকিবে না, যদি- \n(ক) উহা নাগরিকদের মধ্যে ধর্মীয়, সামাজিক এবং সাম্প্রদায়িক সম্প্রীতি বিনষ্ট করিবার উদ্দেশ্যে গঠিত হয়; \n(খ) উহা ধর্ম, গোষ্ঠী, বর্ণ, নারী-পুরুষ, জন্মস্থান বা ভাষার ক্ষেত্রে নাগরিকদের মধ্যে বৈষম্য সৃষ্টি করিবার উদ্দেশ্যে গঠিত হয়; \n(গ) উহা রাষ্ট্র বা নাগরিকদের বিরুদ্ধে কিংবা অন্য কোন দেশের বিরুদ্ধে সন্ত্রাসী বা জঙ্গী কার্য পরিচালনার উদ্দেশ্যে গঠিত হয়; বা \n(ঘ) উহার গঠন ও উদ্দেশ্য এই সংবিধানের পরিপন্থী হয়।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৩৯। চিন্তা ও বিবেকের স্বাধীনতা এবং বাক্-স্বাধীনতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৯। (১) চিন্তা ও বিবেকের স্বাধীনতার নিশ্চয়তাদান করা হইল।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) রাষ্ট্রের নিরাপত্তা, বিদেশী রাষ্ট্রসমূহের সহিত বন্ধুত্বপূর্ণ সম্পর্ক, জনশৃঙ্খলা, শালীনতা ও নৈতিকতার স্বার্থে কিংবা আদালত-অবমাননা, মানহানি বা অপরাধ-সংঘটনে প্ররোচনা সম্পর্কে আইনের দ্বারা আরোপিত যুক্তিসঙ্গত বাধানিষেধ-সাপেক্ষে \n(ক) প্রত্যেক নাগরিকের বাক্ ও ভাব প্রকাশের স্বাধীনতার অধিকারের, এবং \n(খ) সংবাদক্ষেত্রের স্বাধীনতার \nনিশ্চয়তা দান করা হইল।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪০। পেশা বা বৃত্তির স্বাধীনতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪০। আইনের দ্বারা আরোপিত বাধানিষেধ-সাপেক্ষে কোন পেশা বা বৃত্তি-গ্রহণের কিংবা কারবার বা ব্যবসায়-পরিচালনার জন্য আইনের দ্বারা কোন যোগ্যতা নির্ধারিত হইয়া থাকিলে অনুরূপ যোগ্যতাসম্পন্ন প্রত্যেক নাগরিকের যে কোন আইনসঙ্গত পেশা বা বৃত্তি-গ্রহণের এবং যে কোন আইনসঙ্গত কারবার বা ব্যবসায়-পরিচালনার অধিকার থাকিবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪১। ধর্মীয় স্বাধীনতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪১। (১) আইন, জনশৃঙ্খলা ও নৈতিকতা-সাপেক্ষে \n(ক) প্রত্যেক নাগরিকের যে কোন ধর্ম অবলম্বন, পালন বা প্রচারের অধিকার রহিয়াছে; \n(খ) প্রত্যেক ধর্মীয় সম্প্রদায় ও উপ-সম্প্রদায়ের নিজস্ব ধর্মীয় প্রতিষ্ঠানের স্থাপন, রক্ষণ ও ব্যবস্থাপনার অধিকার রহিয়াছে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) কোন শিক্ষা-প্রতিষ্ঠানে যোগদানকারী কোন ব্যক্তির নিজস্ব ধর্ম-সংক্রান্ত না হইলে তাঁহাকে কোন ধর্মীয় শিক্ষাগ্রহণ কিংবা কোন ধর্মীয় অনুষ্ঠান বা উপাসনায় অংশগ্রহণ বা যোগদান করিতে হইবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪২। সম্পত্তির অধিকার'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪২। (১) আইনের দ্বারা আরোপিত বাধানিষেধ-সাপেক্ষে প্রত্যেক নাগরিকের সম্পত্তি অর্জন, ধারণ, হস্তান্তর বা অন্যভাবে বিলি-ব্যবস্থা করিবার অধিকার থাকিবে এবং আইনের কর্তৃত্ব ব্যতীত কোন সম্পত্তি বাধ্যতামূলকভাবে গ্রহণ, রাষ্ট্রায়ত্ত বা দখল করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) এই অনুচ্ছেদের (১) দফার অধীন প্রণীত আইনে ক্ষতিপূরণসহ বাধ্যতামূলকভাবে গ্রহণ, রাষ্ট্রায়ত্তকরণ বা দখলের বিধান করা হইবে এবং ক্ষতিপূরণের পরিমাণ নির্ধারণ কিংবা ক্ষতিপূরণ নির্ণয় ও প্রদানের নীতি ও পদ্ধতি নির্দিষ্ট করা হইবে; তবে অনুরূপ কোন আইনে ক্ষতিপূরণের বিধান অপর্যাপ্ত হইয়াছে বলিয়া সেই আইন সম্পর্কে কোন আদালতে কোন প্রশ্ন উত্থাপন করা যাইবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪৩। গৃহ ও যোগাযোগের রক্ষণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪৩। রাষ্ট্রের নিরাপত্তা, জনশৃঙ্খলা, জনসাধারণের নৈতিকতা বা জনস্বাস্থ্যের স্বার্থে আইনের দ্বারা আরোপিত যুক্তিসঙ্গত বাধানিষেধ-সাপেক্ষে প্রত্যেক নাগরিকের \n(ক) প্রবেশ, তল্লাশী ও আটক হইতে স্বীয় গৃহে নিরাপত্তালাভের অধিকার থাকিবে; এবং \n(খ) চিঠিপত্রের ও যোগাযোগের অন্যান্য উপায়ের গোপনতারক্ষার অধিকার থাকিবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪৪। মৌলিক অধিকার বলবৎকরণ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪৪। (১) এই ভাগে প্রদত্ত অধিকারসমূহ বলবৎ করিবার জন্য এই সংবিধানের ১০২ অনুচ্ছেদের (১) দফা অনুযায়ী হাইকোর্ট বিভাগের নিকট মামলা রুজু করিবার অধিকারের নিশ্চয়তা দান করা হইল।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) এই সংবিধানের ১০২ অনুচ্ছেদের অধীন হাইকোর্ট বিভাগের ক্ষমতার হানি না ঘটাইয়া সংসদ আইনের দ্বারা অন্য কোন আদালতকে তাহার এখতিয়ারের স্থানীয় সীমার মধ্যে ঐ সকল বা উহার যে কোন ক্ষমতা প্রয়োগের ক্ষমতা দান করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪৫। শৃঙ্খলামূলক আইনের ক্ষেত্রে অধিকারের পরিবর্তন'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪৫। কোন শৃঙ্খলা-বাহিনীর সদস্য-সম্পর্কিত কোন শৃঙ্খলামূলক আইনের যে কোন বিধান উক্ত সদস্যদের যথাযথ কর্তব্যপালন বা উক্ত বাহিনীতে শৃঙ্খলারক্ষা নিশ্চিত করিবার উদ্দেশ্যে প্রণীত বিধান বলিয়া অনুরূপ বিধানের ক্ষেত্রে এই ভাগের কোন কিছুই প্রযোজ্য হইবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪৬। দায়মুক্তি-বিধানের ক্ষমতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪৬। এই ভাগের পূর্ববর্ণিত বিধানাবলীতে যাহা বলা হইয়াছে, তাহা সত্ত্বেও প্রজাতন্ত্রের কর্মে নিযুক্ত কোন ব্যক্তি বা অন্য কোন ব্যক্তি জাতীয় মুক্তিসংগ্রামের প্রয়োজনে কিংবা বাংলাদেশের রাষ্ট্রীয় সীমানার মধ্যে যে কোন অঞ্চলে শৃঙ্খলা-রক্ষা বা পুনর্বহালের প্রয়োজনে কোন কার্য করিয়া থাকিলে সংসদ আইনের দ্বারা সেই ব্যক্তিকে দায়মুক্ত করিতে পারিবেন কিংবা ঐ অঞ্চলে প্রদত্ত কোন দণ্ডাদেশ, দণ্ড বা বাজেয়াপ্তির আদেশকে কিংবা অন্য কোন কার্যকে বৈধ করিয়া লইতে পারিবেন।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪৭। কতিপয় আইনের হেফাজত'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪৭। (১) নিম্নলিখিত যে কোন বিষয়ের বিধান-সংবলিত কোন আইনে (প্রচলিত আইনের ক্ষেত্রে সংশোধনীর মাধ্যমে) সংসদ যদি স্পষ্টরূপে ঘোষণা করেন যে, এই সংবিধানের দ্বিতীয় ভাগে বর্ণিত রাষ্ট্র পরিচালনার মূলনীতিসমূহের কোন একটিকে কার্যকর করিবার জন্য অনুরূপ বিধান করা হইল, তাহা হইলে অনুরূপ আইন এইভাগে নিশ্চয়কৃত কোন অধিকারের সহিত অসমঞ্জস কিংবা অনুরূপ অধিকার হরণ বা খর্ব করিতেছে, এই কারণে বাতিল বলিয়া গণ্য হইবে নাঃ \n(ক) কোন সম্পত্তি বাধ্যতামূলকভাবে গ্রহণ, রাষ্ট্রায়ত্তকরণ বা দখল কিংবা সাময়িকভাবে বা স্থায়ীভাবে কোন সম্পত্তির নিয়ন্ত্রণ বা ব্যবস্থাপনা; \n(খ) বাণিজ্যিক বা অন্যবিধ উদ্যোগসম্পন্ন একাধিক প্রতিষ্ঠানের বাধ্যতামূলক সংযুক্তকরণ; \n(গ) অনুরূপ যে কোন প্রতিষ্ঠানের পরিচালক, ব্যবস্থাপক, এজেন্ট ও কর্মচারীদের অধিকার এবং (যে কোন প্রকারের) শেয়ার ও স্টকের মালিকদের ভোটাধিকার বিলোপ, পরিবর্তন, সীমিতকরণ বা নিয়ন্ত্রণ; \n(ঘ) খনিজদ্রব্য বা খনিজ তৈল-অনুসন্ধান বা লাভের অধিকার বিলোপ, পরিবর্তন, সীমিতকরণ বা নিয়ন্ত্রণ; \n(ঙ) অন্যান্য ব্যক্তিকে অংশতঃ বা সম্পূর্ণতঃ পরিহার করিয়া সরকার কর্তৃক বা সরকারের নিজস্ব, নিয়ন্ত্রণাধীন বা ব্যবস্থাপনাধীন কোন সংস্থা কর্তৃক যে কোন কারবার, ব্যবসায়, শিল্প বা কর্মবিভাগ-চালনা; অথবা \n(চ) যে কোন সম্পত্তির স্বত্ব কিংবা পেশা, বৃত্তি, কারবার বা ব্যবসায়-সংক্রান্ত যে কোন অধিকার কিংবা কোন সংবিধিবদ্ধ সরকারী প্রতিষ্ঠান বা কোন বাণিজ্যিক বা শিল্পগত উদ্যোগের মালিক বা কর্মচারীদের অধিকার বিলোপ, পরিবর্তন, সীমিতকরণ বা নিয়ন্ত্রণ।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) এই সংবিধানে যাহা বলা হইয়াছে, তাহা সত্ত্বেও প্রথম তফসিলে বর্ণিত আইনসমূহ (অনুরূপ আইনের কোন সংশোধনীসহ) পূর্ণভাবে বলবৎ ও কার্যকর হইতে থাকিবে এবং অনুরূপ যে কোন আইনের কোন বিধান কিংবা অনুরূপ কোন আইনের কর্তৃত্বেযাহা করা হইয়াছে বা করা হয় নাই, তাহা এই সংবিধানের কোন বিধানের সহিত অসমঞ্জস বা তাহার পরিপন্থী, এই কারণে বাতিল বা বেআইনী বলিয়া গণ্য হইবে না; \nতবে শর্ত থাকে যে, এই অনুচ্ছেদের কোন কিছুই অনুরূপ কোন আইনকে সংশোধন, পরিবর্তন বা বাতিল করা হইতে নিবৃত্ত করিবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) এই সংবিধানে যাহা বলা হইয়াছে, তাহা সত্ত্বেও গণহত্যাজনিত অপরাধ, মানবতাবিরোধী অপরাধ বা যুদ্ধাপরাধ এবং আন্তর্জাতিক আইনের অধীন অন্যান্য অপরাধের জন্য কোন সশস্ত্র বাহিনী বা প্রতিরক্ষা বাহিনী বা সহায়ক বাহিনীর সদস্য3[বা অন্য কোন ব্যক্তি, ব্যক্তি সমষ্টি বা সংগঠন]কিংবা যুদ্ধবন্দীকে আটক, ফৌজদারীতে সোপর্দ কিংবা দন্ডদান করিবার বিধান-সংবলিত কোন আইন বা আইনের বিধান এই সংবিধানের কোন বিধানের সহিত অসমঞ্জস বা তাহার পরিপন্থী, এই কারণে বাতিল বা বেআইনী বলিয়া গণ্য হইবে না কিংবা কখনও বাতিল বা বেআইনী হইয়াছে বলিয়া গণ্য হইবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৪৭ক। সংবিধানের কতিপয় বিধানের অপ্রযোজ্যতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪৭ক। (১) যে ব্যক্তির ক্ষেত্রে এই সংবিধানের ৪৭ অনুচ্ছেদের (৩) দফায় বর্ণিত কোন আইন প্রযোজ্য হয়, সেই ব্যক্তির ক্ষেত্রে এই সংবিধানের ৩১ অনুচ্ছেদ, ৩৫ অনুচ্ছেদের (১) ও (৩) দফা এবং ৪৪ অনুচ্ছেদের অধীন নিশ্চয়কৃত অধিকারসমূহ প্রযোজ্য হইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) এই সংবিধানে যাহা বলা হইয়াছে, তাহা সত্ত্বেও যে ব্যক্তির ক্ষেত্রে এই সংবিধানের ৪৭ অনুচ্ছেদের (৩) দফায় বর্ণিত কোন আইন প্রযোজ্য হয়, এই সংবিধানের অধীন কোন প্রতিকারের জন্য সুপ্রীম কোর্টে আবেদন করিবার কোন অধিকার সেই ব্যক্তির থাকিবে না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
        ],
      ),
    );
  }
}
