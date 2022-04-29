import 'package:flutter/material.dart';
import '../../globals.dart';

class PartFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("পঞ্চম ভাগঃ আইনসভা"),
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
            "(পঞ্চম ভাগ) আইনসভা",
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
            "১ম পরিচ্ছেদঃ সংসদ",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('৬৫। সংসদ-প্রতিষ্ঠা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৬৫। (১) "জাতীয় সংসদ" নামে বাংলাদেশের একটি সংসদ থাকিবে এবং এই সংবিধানের বিধানাবলী-সাপেক্ষে প্রজাতন্ত্রের আইনপ্রণয়ন-ক্ষমতা সংসদের উপর ন্যস্ত হইবে:\nতবে শর্ত থাকে যে, সংসদের আইন দ্বারা যে কোন ব্যক্তি বা কর্তৃপক্ষকে আদেশ, বিধি, প্রবিধান, উপ-আইন বা আইনগত কার্যকরতাসম্পন্ন অন্যান্য চুক্তিপত্র প্রণয়নের ক্ষমতার্পণ হইতে এই দফার কোন কিছুই সংসদকে নিবৃত্ত করিবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) একক আঞ্চলিক নির্বাচনী এলাকাসমূহ হইতে প্রত্যক্ষ নির্বাচনের মাধ্যমে আইনানুযায়ী নির্বাচিত তিন শত সদস্য লইয়া এবং এই অনুচ্ছেদের (৩) দফার কার্যকরতাকালে উক্ত দফায় বর্ণিত সদস্যদিগকে লইয়া সংসদ গঠিত হইবে; সদস্যগণ সংসদ-সদস্য বলিয়া অভিহিত হইবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) সংবিধান (সপ্তদশ সংশোধন) আইন, ২০১৮ প্রবর্তনকালে বিদ্যমান সংসদের অব্যবহিত পরবর্তী সংসদের প্রথম বৈঠকের তারিখ হইতে শুরু করিয়া পঁচিশ বৎসরকাল অতিবাহিত হইবার অব্যবহিত পরবর্তীকালে সংসদ ভাংগিয়া না যাওয়া পর্যন্ত পঞ্চাশটি আসন কেবল মহিলা-সদস্যদের জন্য সংরক্ষিত থাকিবে এবং তাঁহারা আইনানুযায়ী পূর্বোক্ত সদস্যদের দ্বারা সংসদে আনুপাতিক প্রতিনিধিত্ব পদ্ধতির ভিত্তিতে একক হস্তান্তরযোগ্য ভোটের মাধ্যমে নির্বাচিত হইবেন:\nতবে শর্ত থাকে যে, এই দফার কোন কিছুই এই অনুচ্ছেদের (২) দফার অধীন কোন আসনে কোন মহিলার নির্বাচন নিবৃত্ত করিবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩ক) সংবিধান (পঞ্চদশ সংশোধন) আইন, ২০১১ প্রবর্তনকালে বিদ্যমান সংসদের অবশিষ্ট মেয়াদে এই অনুচ্ছেদের (২) দফায় বর্ণিত প্রত্যক্ষ নির্বাচনের মাধ্যমে নির্বাচিত তিন শত সদস্য এবং (৩) দফায় বর্ণিত পঞ্চাশ মহিলা-সদস্য লইয়া সংসদ গঠিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) রাজধানীতে সংসদের আসন থাকিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৬৬। সংসদে নির্বাচিত হইবার যোগ্যতা ও অযোগ্যতা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৬৬। (১) কোন ব্যক্তি বাংলাদেশের নাগরিক হইলে এবং তাঁহার বয়স পঁচিশ বৎসর পূর্ণ হইলে এই অনুচ্ছেদের (২) দফায় বর্ণিত বিধান-সাপেক্ষে তিনি সংসদের সদস্য নির্বাচিত হইবার এবং সংসদ-সদস্য থাকিবার যোগ্য হইবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) কোন ব্যক্তি সংসদের সদস্য নির্বাচিত হইবার এবং সংসদ-সদস্য থাকিবার যোগ্য হইবেন না, যদি \n(ক) কোন উপযুক্ত আদালত তাঁহাকে অপ্রকৃতিস্থ বলিয়া ঘোষণা করেন; \n(খ) তিনি দেউলিয়া ঘোষিত হইবার পর দায় হইতে অব্যাহতি লাভ না করিয়া থাকেন; \n(গ) তিনি কোন বিদেশী রাষ্ট্রের নাগরিকত্ব অর্জন করেন কিংবা কোন বিদেশী রাষ্ট্রের প্রতি আনুগত্য ঘোষণা বা স্বীকার করেন; \n(ঘ) তিনি নৈতিক স্খলনজনিত কোন ফৌজদারী অপরাধে দোষী সাব্যস্ত হইয়া অনূ্যন দুই বৎসরের কারাদণ্ডে দণ্ডিত হন এবং তাঁহার মুক্তিলাভের পর পাঁচ বৎসরকাল অতিবাহিত না হইয়া থাকে; \n((ঙ) তিনি ১৯৭২ সালের বাংলাদেশ যোগসাজশকারী (বিশেষ ট্রাইব্যুনাল) আদেশের অধীন যে কোন অপরাধের জন্য দণ্ডিত হইয়া থাকেন; \n((চ) আইনের দ্বারা পদাধিকারীকে অযোগ্য ঘোষণা করিতেছে না, এমন পদ ব্যতীত তিনি প্রজাতন্ত্রের কর্মে কোন লাভজনক পদে অধিষ্ঠিত থাকেন; অথবা \n((ছ) তিনি কোন আইনের দ্বারা বা অধীন অনুরূপ নির্বাচনের জন্য অযোগ্য হন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২ক) এই অনুচ্ছেদের (২) দফার (গ) উপ-দফা তে যাহা কিছুই থাকুক না কেন, কোন ব্যক্তি জন্মসূত্রে বাংলাদেশের নাগরিক হইয়া কোন বিদেশী রাষ্ট্রের নাগরিকত্ব অর্জন করিলে এবং পরবর্তীতে উক্ত ব্যক্তি- \n(ক) দ্বৈত নাগরিকত্ব গ্রহণের ক্ষেত্রে, বিদেশী রাষ্ট্রের নাগরিকত্ব ত্যাগ করিলে; কিংবা \n(খ) অন্য ক্ষেত্রে, পুনরায় বাংলাদেশের নাগরিকত্ব গ্রহণ করিলে- এই অনুচ্ছেদের উদ্দেশ্য সাধনকল্পে তিনি বিদেশী রাষ্ট্রের নাগরিকত্ব অর্জন করিয়াছেন বলিয়া গণ্য হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) এই অনুচেছদের উদ্দেশ্য সাধনকল্পে কোন ব্যক্তি কেবল রাষ্ট্রপতি, প্রধানমন্ত্রী, স্পীকার, ডেপুটি স্পীকার, মন্ত্রী, প্রতিমন্ত্রী, উপ-মন্ত্রী হইবার কারণে প্রজাতন্ত্রের কর্মে কোন লাভজনক পদে অধিষ্ঠিত বলিয়া গণ্য হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) কোন সংসদ-সদস্য তাঁহার নির্বাচনের পর এই অনুচ্ছেদের (২) দফায় বর্ণিত অযোগ্যতার অধীন হইয়াছেন কিনা কিংবা এই সংবিধানের ৭০ অনুচ্ছেদ অনুসারে কোন সংসদ-সদস্যের আসন শূন্য হইবে কিনা, সে সম্পর্কে কোন বিতর্ক দেখা দিলে শুনানী ও নিষ্পত্তির জন্য প্রশ্নটি নির্বাচন কমিশনের নিকট প্রেরিত হইবে এবং অনুরূপ ক্ষেত্রে কমিশনের সিদ্ধান্ত চূড়ান্ত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৫) এই অনুচ্ছেদের (৪) দফার বিধানাবলী যাহাতে পূর্ণ কার্যকরতা লাভ করিতে পারে, সেই উদ্দেশ্যে নির্বাচন কমিশনকে ক্ষমতাদানের জন্য সংসদ যেরূপ প্রয়োজন বোধ করিবেন, আইনের দ্বারা সেইরূপ বিধান করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৬৭। সদস্যদের আসন শূন্য হওয়া'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৬৭। (১) কোন সংসদ-সদস্যের আসন শূন্য হইবে, যদি \n(ক) তাঁহার নির্বাচনের পর সংসদের প্রথম বৈঠকের তারিখ হইতে নব্বই দিনের মধ্যে তিনি তৃতীয় তফসিলে নির্ধারিত শপথ গ্রহণ বা ঘোষণা করিতে ও শপথপত্রে বা ঘোষণাপত্রে স্বাক্ষরদান করিতে অসমর্থ হন: তবে শর্ত থাকে যে, অনুরূপ মেয়াদ অতিবাহিত হইবার পূর্বে স্পীকার যথার্থ কারণে তাহা বর্ধিত করিতে পারিবেন; \n(খ) সংসদের অনুমতি না লইয়া তিনি একাদিক্রমে নব্বই বৈঠক-দিবস অনুপস্থিত থাকেন; \n(গ) সংসদ ভাঙ্গিয়া যায়; \n(ঘ) তিনি এই সংবিধানের ৬৬ অনুচ্ছেদের (২) দফার অধীন অযোগ্য হইয়া যান; অথবা \n(ঙ) এই সংবিধানের ৭০ অনুচ্ছেদে বর্ণিত পরিস্থিতির উদ্ভব হয়।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) কোন সংসদ-সদস্য স্পীকারের নিকট স্বাক্ষরযুক্ত পত্রযোগে স্বীয় পদ ত্যাগ করিতে পারিবেন, এবং স্পীকার- কিংবা স্পীকারের পদ শূন্য থাকিলে বা অন্য কোন কারণে স্পীকার স্বীয় দায়িত্ব পালনে অসমর্থ হইলে ডেপুটি স্পীকার- যখন উক্ত পত্র প্রাপ্ত হন, তখন হইতে উক্ত সদস্যের আসন শূন্য হইবে।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৬৮। সংসদ-সদস্যদের [পারিশ্রমিক] প্রভৃতি'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৬৮। সংসদের আইন দ্বারা কিংবা অনুরূপভাবে নির্ধারিত না হওয়া পর্যন্ত রাষ্ট্রপতি কর্তৃক আদেশের দ্বারা যেরূপ নির্ধারিত হইবে, সংসদ-সদস্যগণ সেইরূপ [পারিশ্রমিক], ভাতা ও বিশেষ-অধিকার লাভ করিবেন।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text(
                '৬৯। শপথ গ্রহণের পূর্বে আসন গ্রহণ বা ভোট দান করিলে সদস্যের অর্থদন্ড'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৬৯। কোন ব্যক্তি এই সংবিধানের বিধান অনুযায়ী শপথ গ্রহণ বা ঘোষণা করিবার এবং শপথপত্রে বা ঘোষণাপত্রে স্বাক্ষরদান করিবার পূর্বে কিংবা তিনি সংসদ-সদস্য হইবার যোগ্য নহেন বা অযোগ্য হইয়াছেন জানিয়া সংসদ-সদস্যরূপে আসনগ্রহণ বা ভোটদান করিলে তিনি প্রতি দিনের অনুরূপ কার্যের জন্য প্রজাতন্ত্রের নিকট দেনা হিসাবে উসুলযোগ্য এক হাজার টাকা করিয়া অর্থদণ্ডে দণ্ডনীয় হইবেন।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text(
                '৭০। রাজনৈতিক দল হইতে পদত্যাগ বা দলের বিপক্ষে ভোটদানের কারণে আসন শূন্য হওয়া'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭০। কোন নির্বাচনে কোন রাজনৈতিক দলের প্রার্থীরুপে মনোনীত হইয়া কোন ব্যক্তি সংসদ-সদস্য নির্বাচিত হইলে তিনি যদি- \n(ক) উক্ত দল হইতে পদত্যাগ করেন, অথবা \n(খ) সংসদে উক্ত দলের বিপক্ষে ভোটদান করেন, \nতাহা হইলে সংসদে তাঁহার আসন শূন্য হইবে, তবে তিনি সেই কারণে পরবর্তী কোন নির্বাচনে সংসদ-সদস্য হইবার অযোগ্য হইবেন না।',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('৭১। দ্বৈত-সদস্যতায় বাধা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭১। (১) কোন ব্যক্তি একই সময়ে দুই বা ততোধিক নির্বাচনী এলাকার সংসদ-সদস্য হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) কোন ব্যক্তির একই সময়ে দুই বা ততোধিক নির্বাচনী এলাকা হইতে নির্বাচন প্রার্থী হওয়ায় এই অনুচ্ছেদের (১) দফায় বর্ণিত কোন কিছুই প্রতিবন্ধকতা সৃষ্টি করিবে না, তবে তিনি যদি একাধিক নির্বাচনী এলাকা হইতে নির্বাচিত হন তাহা হইলে- \n(ক) তাঁহার সর্বশেষ নির্বাচনের ত্রিশ দিনের মধ্যে তিনি কোন্ নির্বাচনী এলাকার প্রতিনিধিত্ব করিতে ইচ্ছুক, তাহা জ্ঞাপন করিয়া নির্বাচন কমিশনকে একটি স্বাক্ষরযুক্ত ঘোষণা প্রদান করিবেন এবং তিনি অন্য যে সকল নির্বাচনী এলাকা হইতে নির্বাচিত হইয়াছিলেন, অতঃপর সেই সকল এলাকার আসনসমূহ শূন্য হইবে; \n(খ) এই দফার (ক) উপ-দফা মান্য করিতে অসমর্থ হইলে তিনি যে সকল আসনে নির্বাচিত হইয়াছিলেন, সেই সকল আসন শূন্য হইবে; এবং \n(গ) এই দফার উপরি-উক্ত বিধানসমূহ যতখানি প্রযোজ্য, ততখানি পালন না করা পর্যন্ত নির্বাচিত ব্যক্তি সংসদ-সদস্যের শপথ গ্রহণ বা ঘোষণা করিতে ও শপথপত্রে বা ঘোষণাপত্রে স্বাক্ষরদান করিতে পারিবেন না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭২। সংসদের অধিবেশন'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭২। (১) সরকারী বিজ্ঞপ্তি-দ্বারা রাষ্ট্রপতি সংসদ আহ্বান, স্থগিত ও ভঙ্গ করিবেন এবং সংসদ আহ্বানকালে রাষ্ট্রপতি প্রথম বৈঠকের সময় ও স্থান নির্ধারণ করিবেন: \nতবে শর্ত থাকে যে,[১২৩ অনুচ্ছেদের (৩) দফার (ক) উপ-দফায় উল্লিখিত নব্বই দিন সময় ব্যতীত অন্য সময়ে] সংসদের এক অধিবেশনের সমাপ্তি ও পরবর্তী অধিবেশনের প্রথম বৈঠকের মধ্যে ষাট দিনের অতিরিক্ত বিরতি থাকিবে না: \nতবে আরও শর্ত থাকে যে, এই দফার অধীন তাঁহার দায়িত্ব পালনে রাষ্ট্রপতি প্রধানমন্ত্রী কর্তৃক লিখিতভাবে প্রদত্ত পরামর্শ অনুযায়ী কার্য করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) এই অনুচ্ছেদের (১) দফার বিধানাবলী সত্ত্বেও সংসদ-সদস্যদের যে কোন সাধারণ নির্বাচনের ফলাফল ঘোষিত হইবার ত্রিশ দিনের মধ্যে বৈঠক অনুষ্ঠানের জন্য সংসদ আহ্বান করা হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) রাষ্ট্রপতি পূর্বে ভাঙ্গিয়া না দিয়া থাকিলে প্রথম বৈঠকের তারিখ হইতে পাঁচ বৎসর অতিবাহিত হইলে সংসদ ভাঙ্গিয়া যাইবে: \nতবে শর্ত থাকে যে, প্রজাতন্ত্র যুদ্ধে লিপ্ত থাকিবার কালে সংসদের আইন-দ্বারা অনুরূপ মেয়াদ এককালে অনধিক এক বৎসর বর্ধিত করা যাইতে পারিবে, তবে যুদ্ধ সমাপ্ত হইলে বর্ধিত মেয়াদ কোনক্রমে ছয় মাসের অধিক হইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) সংসদ ভঙ্গ হইবার পর এবং সংসদের পরবর্তী সাধারণ নির্বাচন অনুষ্ঠানের পূর্বে রাষ্ট্রপতির নিকট যদি সন্তোষজনকভাবে প্রতীয়মান হয় যে, প্রজাতন্ত্র যে যুদ্ধে লিপ্ত রহিয়াছেন, সেই যুদ্ধাবস্থার বিদ্যমানতার জন্য সংসদ পুনরাহ্বান করা প্রয়োজন, তাহা হইলে যে সংসদ ভাঙ্গিয়া দেওয়া হইয়াছিল, রাষ্ট্রপতি তাহা আহবান করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৫) এই অনুচ্ছেদের (১) দফার বিধানাবলী-সাপেক্ষে কার্যপ্রণালী-বিধি-দ্বারা বা অন্যভাবে সংসদ যেরূপ নির্ধারণ করিবেন, সংসদের বৈঠকসমূহ সেইরূপ সময়ে ও স্থানে অনুষ্ঠিত হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৩। সংসদে রাষ্ট্রপতির ভাষণ ও বাণী'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৩। (১) রাষ্ট্রপতি সংসদে ভাষণদান এবং বাণী প্রেরণ করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদ-সদস্যদের প্রত্যেক সাধারণ নির্বাচনের পর প্রথম অধিবেশনের সূচনায় এবং প্রত্যেক বৎসর প্রথম অধিবেশনের সূচনায় রাষ্ট্রপতি সংসদে ভাষণ দান করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) রাষ্ট্রপতি কর্তৃক প্রদত্ত ভাষণ শ্রবণ বা প্রেরিত বাণী প্রাপ্তির পর সংসদ উক্ত ভাষণ বা বাণী সম্পর্কে আলোচনা করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৩ক। সংসদ সম্পর্কে মন্ত্রীগণের অধিকার'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৩ক। (১) প্রত্যেক মন্ত্রী সংসদে বক্তৃতা করিতে এবং অন্যভাবে ইহার কার্যাবলীতে অংশগ্রহণ করিতে অধিকারী হইবেন, তবে যদি তিনি সংসদ-সদস্য না হন, তাহা হইলে তিনি ভোটদান করিতে পারিবেন না 2[এবং তিনি কেবল তাঁহার মন্ত্রণালয় সম্পর্কিত বিষয় সম্পর্কে বক্তব্য রাখিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) এই অনুচ্ছেদে "মন্ত্রী" বলিতে প্রধানমন্ত্রী, প্রতিমন্ত্রী ও উপ-মন্ত্রী অন্তর্ভুক্ত।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৪। স্পীকার ও ডেপুটি স্পীকার'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৪। (১) কোন সাধারণ নির্বাচনের পর সংসদের প্রথম বৈঠকে সংসদ-সদস্যদের মধ্য হইতে সংসদ একজন স্পীকার ও একজন ডেপুটি স্পীকার নির্বাচিত করিবেন, এবং এই দুই পদের যে কোনটি শূন্য হইলে সাত দিনের মধ্যে কিংবা ঐ সময়ে সংসদ বৈঠকরত না থাকিলে পরবর্তী প্রথম বৈঠকে তাহা পূর্ণ করিবার জন্য সংসদ-সদস্যদের মধ্য হইতে একজনকে নির্বাচিত করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) স্পীকার বা ডেপুটি স্পীকারের পদ শূন্য হইবে, যদি \n(ক) তিনি সংসদ-সদস্য না থাকেন; \n(খ) তিনি মন্ত্রী-পদ গ্রহণ করেন; \n(গ) পদ হইতে তাঁহার অপসারণ দাবী করিয়া মোট সংসদ-সদস্যের সংখ্যাগরিষ্ঠ ভোটে সমর্থিত কোন প্রস্তাব (প্রস্তাবটি উত্থাপনের অভিপ্রায় জ্ঞাপন করিয়া অন্যূন চৌদ্দ দিনের নোটিশ প্রদানের পর) সংসদে গৃহীত হয়; \n(ঘ) তিনি রাষ্ট্রপতির নিকট স্বাক্ষরযুক্ত পত্রযোগে তাঁহার পদ ত্যাগ করেন; \n(ঙ) কোন সাধারণ নির্বাচনের পর অন্য কোন সদস্য তাঁহার কার্যভার গ্রহণ করেন; অথবা \n(চ) ডেপুটি স্পীকারের ক্ষেত্রে, তিনি স্পীকারের পদে যোগদান করেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) স্পীকারের পদ শূন্য হইলে বা তিনি রাষ্ট্রপতিরূপে কার্য করিলে কিংবা অন্য কোন কারণে তিনি স্বীয় দায়িত্ব পালনে অসমর্থ বলিয়া সংসদ নির্ধারণ করিলে স্পীকারের সকল দায়িত্ব ডেপুটি স্পীকার পালন করিবেন, কিংবা ডেপুটি স্পীকারের পদও শূন্য হইলে সংসদের কার্যপ্রণালী-বিধি-অনুযায়ী কোন সংসদ-সদস্য তাহা পালন করিবেন; এবং সংসদের কোন বৈঠকে স্পীকারের অনুপস্থিতিতে ডেপুটি স্পীকার কিংবা ডেপুটি স্পীকারও অনুপস্থিত থাকিলে সংসদের কার্যপ্রণালী-বিধি-অনুযায়ী কোন সংসদ-সদস্য স্পীকারের দায়িত্ব পালন করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) সংসদের কোন বৈঠকে স্পীকারকে তাঁহার পদ হইতে অপসারণের জন্য কোন প্রস্তাব বিবেচনাকালে স্পীকার (কিংবা ডেপুটি স্পীকারকে তাঁহার পদ হইতে অপসারণের জন্য কোন প্রস্তাব বিবেচনাকালে ডেপুটি স্পীকার) উপস্থিত থাকিলেও সভাপতিত্ব করিবেন না এবং এই অনুচ্ছেদের (৩) দফায় বর্ণিত ক্ষেত্রমত স্পীকার বা ডেপুটি স্পীকারের অনুপস্থিতিকালীন বৈঠক সম্পর্কে প্রযোজ্য বিধানাবলী অনুরূপ প্রত্যেক বৈঠকের ক্ষেত্রে প্রযোজ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৫) স্পীকার বা ডেপুটি স্পীকারের অপসারণের জন্য কোন প্রস্তাব সংসদে বিবেচিত হইবার কালে ক্ষেত্রমত স্পীকার বা ডেপুটি স্পীকারের কথা বলিবার ও সংসদের কার্যধারায় অন্যভাবে অংশগ্রহণের অধিকার থাকিবে এবং তিনি কেবল সদস্যরূপে ভোটদানের অধিকারী হইবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৬) এই অনুচ্ছেদের (২) দফার বিধানাবলী সত্ত্বেও ক্ষেত্রমত স্পীকার বা ডেপুটি স্পীকার তাঁহার উত্তরাধিকারী কার্যভার গ্রহণ না করা পর্যন্ত স্বীয় পদে বহাল রহিয়াছেন বলিয়া গণ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৫। কার্যপ্রণালী-বিধি, কোরাম প্রভৃতি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৫। (১) এই সংবিধান-সাপেক্ষে \n(ক) সংসদ কর্তৃক প্রণীত কার্যপ্রণালী-বিধি-দ্বারা এবং অনুরূপ বিধি প্রণীত না হওয়া পর্যন্ত রাষ্ট্রপতি কর্তৃক প্রণীত কার্যপ্রণালী-বিধি-দ্বারা সংসদের কার্যপ্রণালী নিয়ন্ত্রিত হইবে; \n(খ) উপস্থিত ও ভোটদানকারী সদস্যদের সংখ্যাগরিষ্ঠ ভোটে সংসদে সিদ্ধান্ত গৃহীত হইবে, তবে সমসংখ্যক ভোটের ক্ষেত্র ব্যতীত সভাপতি ভোটদান করিবেন না এবং অনুরূপ ক্ষেত্রে তিনি নির্ণায়ক ভোট প্রদান করিবেন; \n(গ) সংসদের কোন সদস্যপদ শূন্য রহিয়াছে, কেবল এই কারণে কিংবা সংসদে উপস্থিত হইবার বা ভোটদানের বা অন্য কোন উপায়ে কার্যধারায় অংশগ্রহণের অধিকার না থাকা সত্ত্বেও কোন ব্যক্তি অনুরূপ কার্য করিয়াছেন, কেবল এই কারণে সংসদের কোন কার্যধারা অবৈধ হইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদের বৈঠক চলাকালে কোন সময়ে উপস্থিত সদস্য-সংখ্যা ষাটের কম বলিয়া যদি সভাপতির দৃষ্টি আকর্ষণ করা হয়, তাহা হইলে তিনি অনূ্যন ষাট জন সদস্য উপস্থিত না হওয়া বৈঠক স্থগিত রাখিবেন কিংবা মুলতবী করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৬। সংসদের স্থায়ী কমিটিসমূহ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৬। (১) সংসদ-সদস্যদের মধ্য হইতে সদস্য লইয়া সংসদ নিম্নলিখিত স্থায়ী কমিটিসমূহ নিয়োগ করিবেন: \n(ক) সরকারী হিসাব কমিটি; \n(খ) বিশেষ-অধিকার কমিটি; এবং \n(গ) সংসদের কার্যপ্রণালী-বিধিতে নির্দিষ্ট অন্যান্য স্থায়ী কমিটি।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদ এই অনুচ্ছেদের (১) দফায় উলি্লখিত কমিটিসমূহের অতিরিক্ত অন্যান্য স্থায়ী কমিটি নিয়োগ করিবেন এবং অনুরূপভাবে নিযুক্ত কোন কমিটি এই সংবিধান ও অন্য কোন আইন-সাপেক্ষে \n(ক) খসড়া বিল ও অন্যান্য আইনগত প্রস্তাব পরীক্ষা করিতে পারিবেন; \n(খ) আইনের বলবৎকরণ পর্যালোচনা এবং অনুরূপ বলবৎকরণের জন্য ব্যবস্থাদি গ্রহণের প্রস্তাব করিতে পারিবেন; \n(গ) জনগুরুত্বসম্পন্ন বলিয়া সংসদ কোন বিষয় সম্পর্কে কমিটিকে অবহিত করিলে সেই বিষয়ে কোন মন্ত্রণালয়ের কার্য বা প্রশাসন সম্বন্ধে অনুসন্ধান বা তদন্ত করিতে পারিবেন এবং কোন মন্ত্রণালয়ের নিকট হইতে ক্ষমতাপ্রাপ্ত প্রতিনিধির মাধ্যমে প্রাসঙ্গিক তথ্যাদি সংগ্রহের এবং প্রশ্নাদির মৌখিক বা লিখিত উত্তরলাভের ব্যবস্থা করিতে পারিবেন; \n(ঘ) সংসদ কর্তৃক অর্পিত যে কোন দায়িত্ব পালন করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) সংসদ আইনের দ্বারা এই অনুচ্ছেদের অধীন নিযুক্ত কমিটিসমূহকে \n(ক) সাক্ষীদের হাজিরা বলবৎ করিবার এবং শপথ, ঘোষণা বা অন্য কোন উপায়ের অধীন করিয়া তাঁহাদের সাক্ষ্যগ্রহণের; \n(খ) দলিলপত্র দাখিল করিতে বাধ্য করিবার; \nক্ষমতা প্রদান করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৭। ন্যায়পাল'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৭। (১) সংসদ আইনের দ্বারা ন্যায়পালের পদ-প্রতিষ্ঠার জন্য বিধান করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদ আইনের দ্বারা ন্যায়পালকে কোন মন্ত্রণালয়, সরকারী কর্মচারী বা সংবিধিবদ্ধ সরকারী কর্তৃপক্ষের যে কোন কার্য সম্পর্কে তদন্ত পরিচালনার ক্ষমতাসহ যেরূপ ক্ষমতা কিংবা যেরূপ দায়িত্ব প্রদান করিবেন, ন্যায়পাল সেইরূপ ক্ষমতা প্রয়োগ ও দায়িত্ব পালন করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) ন্যায়পাল তাঁহার দায়িত্বপালন সম্পর্কে বাৎসরিক রিপোর্ট প্রণয়ন করিবেন এবং অনুরূপ রিপোর্ট সংসদে উপস্থাপিত হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৮। সংসদ ও সদস্যদের বিশেষ অধিকার ও দায়মুক্তি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৮। (১) সংসদের কার্যধারার বৈধতা সম্পর্কে কোন আদালতে প্রশ্ন উত্থাপন করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদের যে সদস্য বা কর্মচারীর উপর সংসদের কার্যপ্রণালী নিয়ন্ত্রণ, কার্যপরিচালনা বা শৃঙ্খলা রক্ষার ক্ষমতা ন্যস্ত থাকিবে, তিনি সকল ক্ষমতা-প্রয়োগ সম্পর্কিত কোন ব্যাপারে কোন আদালতের এখতিয়ারের অধীন হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) সংসদে বা সংসদের কোন কমিটিতে কিছু বলা বা ভোটদানের জন্য কোন সংসদ-সদস্যের বিরুদ্ধে কোন আদালতে কার্যধারা গ্রহণ করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) সংসদ কর্তৃক বা সংসদের কর্তৃত্বে কোন রিপোর্ট, কাগজপত্র, ভোট বা কার্যধারা প্রকাশের জন্য কোন ব্যক্তির বিরুদ্ধে কোন আদালতে কোন কার্যধারা গ্রহণ করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৫) এই অনুচ্ছেদ-সাপেক্ষে সংসদের আইন-দ্বারা সংসদের, সংসদের কমিটিসমূহের এবং সংসদ-সদস্যদের বিশেষ-অধিকার নির্ধারণ করা যাইতে পারিবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৭৯। সংসদ-সচিবালয়'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৭৯। (১) সংসদের নিজস্ব সচিবালয় থাকিবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদের সচিবালয়ে কর্মচারীদের নিয়োগ ও কর্মের শর্তসমূহ সংসদ আইনের দ্বারা নির্ধারণ করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) সংসদ কর্তৃক বিধান প্রণীত না হওয়া পর্যন্ত স্পীকারের সহিত পরামর্শক্রমে রাষ্ট্রপতি সংসদের সচিবালয়ে কর্মচারীদের নিয়োগ ও কর্মের শর্তসমূহ নির্ধারণ করিয়া বিধি প্রণয়ন করিতে পারিবেন এবং অনুরূপভাবে প্রণীত বিধিসমূহ যে কোন আইনের বিধান-সাপেক্ষে কার্যকর হইবে।',
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
            "২য় পরিচ্ছেদঃ আইন প্রনয়ন ও অর্থসংক্রান্ত পদ্ধতি",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ExpansionTile(
            title: Text('৮০। আইন প্রণয়ন পদ্ধতি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮০। (১) আইনপ্রণয়নের উদ্দেশ্যে সংসদে আনীত প্রত্যেকটি প্রস্তাব বিল আকারে উত্থাপিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সংসদ কর্তৃক কোন বিল গৃহীত হইলে সম্মতির জন্য তাহা রাষ্ট্রপতির নিকট পেশ করিতে হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) রাষ্ট্রপতির নিকট কোন বিল পেশ করিবার পর পনর দিনের মধ্যে তিনি তাহাতে সম্মতিদান করিবেন কিংবা অর্থবিল ব্যতীত অন্য কোন বিলের ক্ষেত্রে বিলটি বা তাহার কোন বিশেষ বিধান পুনর্বিবেচনার কিংবা রাষ্ট্রপতি কর্তৃক নির্দেশিত কোন সংশোধনী বিবেচনার অনুরোধ জ্ঞাপন করিয়া একটি বার্তাসহ তিনি বিলটি সংসদে ফেরত দিতে পারিবেন; এবং রাষ্ট্রপতি তাহা করিতে অসমর্থ হইলে উক্ত মেয়াদের অবসানে তিনি বিলটিতে সম্মতিদান করিয়াছেন বলিয়া গণ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) রাষ্ট্রপতি যদি বিলটি অনুরূপভাবে সংসদে ফেরত পাঠান, তাহা হইলে সংসদ রাষ্টপতির বার্তাসহ তাহা পুনর্বিবেচনা করিবেন; এবং সংশোধনীসহ বা সংশোধনী ব্যতিরেকে সংসদ পুনরায় বিলটি গ্রহণ করিলে সম্মতির জন্য তাহা রাষ্ট্রপতির নিকট উপস্থাপিত হইবে এবং অনুরূপ উপস্থাপনের সাত দিনের মধ্যে তিনি বিলটিতে সম্মতিদান করিবেন; এবং রাষ্ট্রপতি তাহা করিতে অসমর্থ হইলে উক্ত মেয়াদের অবসানে তিনি বিলটিতে সম্মতিদান করিয়াছেন বলিয়া গণ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৫) সংসদ কর্তৃক গৃহীত বিলটিতে রাষ্ট্রপতি সম্মতি',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮১। অর্থবিল'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮১। (১) এই ভাগে "অর্থবিল" বলিতে কেবল নিম্নলিখিত বিষয়সমূহের সকল বা যে কোন একটি সম্পর্কিত বিধানাবলী-সংবলিত বিল বুঝাইবে: \n(ক) কোন কর আরোপ, নিয়ন্ত্রণ, রদবদল, মওকুফ বা রহিতকরণ; \n(খ) সরকার কর্তৃক ঋণগ্রহণ বা কোন গ্যারান্টিদান, কিংবা সরকারের আর্থিক দায়-দায়িত্ব সম্পর্কিত আইন সংশোধন; \n(গ) সংযুক্ত তহবিলের রক্ষণাবেক্ষণ, অনুরূপ তহবিলে অর্থপ্রদান বা অনুরূপ তহবিল হইতে অর্থ দান বা নির্দিষ্টকরণ; \n(ঘ) সংযুক্ত তহবিলের উপর দায় আরোপ কিংবা অনুরূপ কোন দায় রদবদল বা বিলোপ; \n(ঙ) সংযুক্ত তহবিল বা প্রজাতন্ত্রের সরকারী হিসাব বাবদ অর্থপ্রাপ্তি, কিংবা অনুরূপ অর্থ রক্ষণাবেক্ষণ বা দান, কিংবা সরকারের হিসাব-নিরীক্ষা; \n(চ) উপরি-উক্ত উপ-দফাসমূহে নির্ধারিত যে কোন বিষয়ের অধীন কোন আনুষঙ্গিক বিষয়।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) কোন জরিমানা বা অন্য অর্থদণ্ড আরোপ বা রদবদল, কিংবা লাইসেন্স-ফি বা কোন কার্যের জন্য ফি বা উসুল আরোপ বা প্রদান কিংবা স্থানীয় উদ্দেশ্যসাধনকল্পে কোন স্থানীয় কর্তৃপক্ষ বা প্রতিষ্ঠান কর্তৃক কোন কর আরোপ, নিয়ন্ত্রণ, রদবদল, মওকুফ বা রহিতকরণের বিধান করা হইয়াছে, কেবল এই কারণে কোন বিল অর্থবিল বলিয়া গণ্য হইবে না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) রাষ্ট্রপতির সম্মতির জন্য তাঁহার নিকট পেশ করিবার সময়ে প্রত্যেক অর্থবিলে স্পীকারের স্বাক্ষরে এই মর্মে একটি সার্টিফিকেটে থাকিবে যে, তাহা একটি অর্থবিল, এবং অনুরূপ সার্টিফিকেট সকল বিষয়ে চূড়ান্ত হইবে এবং সেই সম্পর্কে কোন আদালতে প্রশ্ন উত্থাপন করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮২। আর্থিক ব্যবস্থাবলীর সুপারিশ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮২। কোন অর্থ বিল, অথবা সরকারী অর্থ ব্যয়ের প্রশ্ন জড়িত রহিয়াছে এমন কোন বিল রাষ্ট্রপতির সুপারিশ ব্যতীত সংসদে উত্থাপন করা যাইবে না:\nতবে শর্ত থাকে যে, কোন অর্থ বিলে কোন কর হ্রাস বা বিলোপের বিধান-সংবলিত কোন সংশোধনী উত্থাপনের জন্য এই অনুচ্ছেদের অধীন সুপারিশের প্রয়োজন হইবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮৩। সংসদের আইন ব্যতীত করারোপে বাধা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮৩। সংসদের কোন আইনের দ্বারা বা কর্তৃত্ব ব্যতীত কোন কর আরোপ বা সংগ্রহ করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮৪। সংযুক্ত তহবিল ও প্রজাতন্ত্রের সরকারী হিসাব'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮৪। (১) সরকার কর্তৃক প্রাপ্ত সকল রাজস্ব, সরকার কর্তৃক সংগৃহীত সকল ঋণ এবং কোন ঋণ পরিশোধ হইতে সরকার কর্তৃক প্রাপ্ত সকল অর্থ একটি মাত্র তহবিলের অংশে পরিণত হইবে এবং তাহা "সংযুক্ত তহবিল" নামে অভিহিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) সরকার কর্তৃক বা সরকারের পক্ষে প্রাপ্ত অন্য সকল সরকারী অর্থ প্রজাতন্ত্রের সরকারী হিসাবে জমা হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮৫। সরকারী অর্থের নিয়ন্ত্রণ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮৫। সরকারী অর্থের রক্ষণাবেক্ষণ, ক্ষেত্রমত সংযুক্ত তহবিলে অর্থ প্রদান বা তাহা হইতে অর্থ প্রত্যাহার কিংবা প্রজাতন্ত্রের সরকারী হিসাবে অর্থ প্রদান বা তাহা হইতে অর্থ প্রত্যাহার এবং উপরি-উক্ত বিষয়সমূহের সহিত সংশ্লিষ্ট বা আনুষঙ্গিক সকল বিষয় সংসদের আইন-দ্বারা এবং অনুরূপ আইনের বিধান না হওয়া পর্যন্ত রাষ্ট্রপতি কর্তৃক প্রণীত বিধিসমূহ-দ্বারা নিয়ন্ত্রিত হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮৬। প্রজাতন্ত্রের সরকারী হিসাবে প্রদেয় অর্থ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮৬। প্রজাতন্ত্রের সরকারী হিসাবে জমা হইবে- \n(ক) রাজস্ব কিংবা এই সংবিধানের ৮৪ অনুচ্ছেদের (১) দফার কারণে যেরূপ অর্থ সংযুক্ত তহবিলের অংশে পরিণত হইবে, তাহা ব্যতীত প্রজাতন্ত্রের কর্মে নিযুক্ত কিংবা প্রজাতন্ত্রের বিষয়াবলীর সহিত সংশ্লিষ্ট কোন ব্যক্তি কর্তৃক প্রাপ্ত বা ব্যক্তির নিকট জমা রহিয়াছে, এইরূপ সকল অর্থ; অথবা \n(খ) যে কোন মোকদ্দমা, বিষয়, হিসাব বা ব্যক্তি বাবদ যে কোন আদালত কর্তৃক প্রাপ্ত বা আদালতের নিকট জমা রহিয়াছে, এইরূপ সকল অর্থ।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮৭। বার্ষিক আর্থিক বিবৃতি'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮৭। (১) প্রত্যেক অর্থ-বৎসর সম্পর্কে উক্ত বৎসরের জন্য সরকারের অনুমিত আয় ও ব্যয়-সংবলিত একটি বিবৃতি (এই ভাগে "বার্ষিক আর্থিক বিবৃতি" নামে অভিহিত) সংসদে উপস্থাপিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) বার্ষিক আর্থিক বিবৃতিতে পৃথক পৃথকভাবে \n(ক) এই সংবিধানের দ্বারা বা অধীন সংযুক্ত তহবিলের উপর দায়রূপে বর্ণিত ব্যয় নির্বাহের জন্য প্রয়োজনীয় অর্থ, এবং \n(খ) সংযুক্ত তহবিল হইতে ব্যয় করা হইবে, এইরূপ প্রস্তাবিত অন্যান্য ব্যয় নির্বাহের জন্য প্রয়োজনীয় অর্থ, প্রদর্শিত হইবে এবং অন্যান্য ব্যয় হইতে রাজস্ব খাতের ব্যয় পৃথক করিয়া প্রদর্শিত হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৮৮। সংযুক্ত তহবিলের উপর দায়'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '৮৮। সংযুক্ত তহবিলের উপর দায়যুক্ত ব্যয় নিম্নরূপ হইবে: \n(ক) রাষ্ট্রপতিকে দেয় পারিশ্রমিক ও তাঁহার দপ্তর-সংশ্লিষ্ট অন্যান্য ব্যয়;  \n\n(খ) (অ) স্পীকার ও ডেপুটি স্পীকার, \n(আ) সুপ্রীম কোর্টের বিচারকগণ, \n(ই) মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক, \n(ঈ) নির্বাচন কমিশনারগণ, \n(উ) সরকারী কর্ম কমিশনের সদস্যদিগকে, দেয় পারিশ্রমিক; \n\n(গ) সংসদ, সুপ্রীম কোর্ট, মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রকের দপ্তর, নির্বাচন কমিশন এবং সরকারী কর্ম কমিশনের কর্মচারীদিগকে দেয় পারিশ্রমিকসহ প্রশাসনিক ব্যয়; \n(ঘ) সুদ, পরিশোধ-তহবিলের দায়, মূলধন পরিশোধ বা তাহার ক্রম-পরিশোধ এবং ঋণসংগ্রহ-ব্যপদেশে ও সংযুক্ত তহবিলের জামানতে গৃহীত ঋণের মোচন-সংক্রান্ত অন্যান্য ব্যয়সহ সরকারের ঋণ-সংক্রান্ত সকল দেনার দায়; \n(ঙ) কোন আদালত বা ট্রাইব্যুনাল কর্তৃক প্রজাতন্ত্রের বিরুদ্ধে প্রদত্ত কোন রায়, ডিক্রী বা রোয়েদাদ কার্যকর করিবার জন্য প্রয়োজনীয় যে কোন পরিমাণ অর্থ; এবং \n(চ) এই সংবিধান বা সংসদের আইন দ্বারা অনুরূপ দায়যুক্ত বলিয়া ঘোষিত অন্য যে কোন ব্যয়।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "\n\n \n\n \n\n \n\n \n\n৮৯। বার্ষিক আর্থিক বিবৃতি সম্পর্কিত পদ্ধতি \n\n৯০। নির্দিষ্টকরণ আইন \n\n৯১। সম্পূরক ও অতিরিক্ত মঞ্জুরী \n\n৯২। হিসাব, ঋণ প্রভৃতির উপর ভোট \n\n৯২ক। [বিলুপ্ত] \n\n\n৩য় পরিচ্ছেদঃ অধ্যাদেশপ্রণয়ন-ক্ষমতা \n\n৯৩। অধ্যাদেশপ্রণয়ন-ক্ষমতা",
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
