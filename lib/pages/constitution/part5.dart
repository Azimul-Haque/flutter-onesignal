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
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "\n\n \n\n \n\n \n\n \n\n \n\n৭৫। কার্যপ্রণালী-বিধি, কোরাম প্রভৃতি \n\n৭৬। সংসদের স্থায়ী কমিটিসমূহ \n\n৭৭। ন্যায়পাল \n\n৭৮। সংসদ ও সদস্যদের বিশেষ অধিকার ও দায়মুক্তি \n\n৭৯। সংসদ-সচিবালয় \n\n\n২য় পরিচ্ছেদঃ আইন প্রনয়ন ও অর্থসংক্রান্ত পদ্ধতি \n\n৮০। আইন প্রণয়ন পদ্ধতি \n\n৮১। অর্থবিল \n\n৮২। আর্থিক ব্যবস্থাবলীর সুপারিশ \n\n৮৩। সংসদের আইন ব্যতীত করারোপে বাধা \n\n৮৪। সংযুক্ত তহবিল ও প্রজাতন্ত্রের সরকারী হিসাব \n\n৮৫। সরকারী অর্থের নিয়ন্ত্রণ \n\n৮৬। প্রজাতন্ত্রের সরকারী হিসাবে প্রদেয় অর্থ \n\n৮৭। বার্ষিক আর্থিক বিবৃতি \n\n৮৮। সংযুক্ত তহবিলের উপর দায় \n\n৮৯। বার্ষিক আর্থিক বিবৃতি সম্পর্কিত পদ্ধতি \n\n৯০। নির্দিষ্টকরণ আইন \n\n৯১। সম্পূরক ও অতিরিক্ত মঞ্জুরী \n\n৯২। হিসাব, ঋণ প্রভৃতির উপর ভোট \n\n৯২ক। [বিলুপ্ত] \n\n\n৩য় পরিচ্ছেদঃ অধ্যাদেশপ্রণয়ন-ক্ষমতা \n\n৯৩। অধ্যাদেশপ্রণয়ন-ক্ষমতা",
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
