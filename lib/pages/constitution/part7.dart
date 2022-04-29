import 'package:flutter/material.dart';
import '../../globals.dart';

class PartSeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সপ্তম ভাগঃ নির্বাচন"),
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
            "(সপ্তম ভাগ) নির্বাচন",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১১৮। নির্বাচন কমিশন প্রতিষ্ঠা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১১৮ ।(১) প্রধান নির্বাচন কমিশনার এবং অনধিক চার জন নির্বাচন কমিশনারকে লইয়া] বাংলাদেশের একটি নির্বাচন কমিশন থাকিবে এবং উক্ত বিষয়ে প্রণীত কোন আইনের বিধানাবলী-সাপেক্ষে রাষ্ট্রপতি প্রধান নির্বাচন কমিশনারকে ও অন্যান্য নির্বাচন কমিশনারকে নিয়োগদান করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) একাধিক নির্বাচন কমিশনারকে লইয়া নির্বাচন কমিশন গঠিত হইলে প্রধান নির্বাচন কমিশনার তাহার সভাপতিরূপে কার্য করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) এই সংবিধানের বিধানাবলী-সাপেক্ষে কোন নির্বাচন কমিশনারের পদের মেয়াদ তাঁহার কার্যভার গ্রহণের তারিখ হইতে পাঁচ বৎসরকাল হইবে এবং \n(ক) প্রধান নির্বাচন কমিশনার-পদে অধিষ্ঠিত ছিলেন, এমন কোন ব্যক্তি প্রজাতন্ত্রের কর্মে নিয়োগলাভের যোগ্য হইবেন না; \n(খ) অন্য কোন নির্বাচন কমিশনার অনুরূপ পদে কর্মাবসানের পর প্রধান নির্বাচন কমিশনাররূপে নিয়োগলাভের যোগ্য হইবেন, তবে অন্য কোনভাবে প্রজাতন্ত্রের কর্মে নিয়োগলাভের যোগ্য হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) নির্বাচন কমিশন দায়িত্ব পালনের ক্ষেত্রে স্বাধীন থাকিবেন এবং কেবল এই সংবিধান ও আইনের অধীন হইবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৫) সংসদ কর্তৃক প্রণীত যে কোন আইনের বিধানাবলী-সাপেক্ষে নির্বাচন কমিশনারদের কর্মের শর্তাবলী রাষ্ট্রপতি আদেশের দ্বারা যেরূপ নির্ধারণ করিবেন, সেইরূপ হইবে: \nতবে শর্ত থাকে যে, সুপ্রীম কোর্টের বিচারক যেরূপ পদ্ধতি ও কারণে অপসারিত হইতে পারেন, সেইরূপ পদ্ধতি ও কারণ ব্যতীত কোন নির্বাচন কমিশনার অপসারিত হইবেন না।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৬) কোন নির্বাচন কমিশনার রাষ্ট্রপতিকে উদ্দেশ করিয়া স্বাক্ষরযুক্ত পত্রযোগে স্বীয় পদ ত্যাগ করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১১৯। নির্বাচন কমিশনের দায়িত্ব'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১১৯। (১) রাষ্ট্রপতি পদের ও সংসদের নির্বাচনের জন্য ভোটার-তালিকা প্রস্তুতকরণের তত্ত্বাবধান, নির্দেশ ও নিয়ন্ত্রণ এবং অনুরূপ নির্বাচন পরিচালনার দায়িত্ব নির্বাচন কমিশনের উপর ন্যস্ত থাকিবে এবং নির্বাচন কমিশন এই সংবিধান ও আইনানুযায়ী \n(ক) রাষ্ট্রপতি পদের নির্বাচন অনুষ্ঠান করিবেন; \n(খ) সংসদ-সদস্যদের নির্বাচন অনুষ্ঠান করিবেন; \n(গ) সংসদে নির্বাচনের জন্য নির্বাচনী এলাকার সীমানা নির্ধারণ করিবেন; এবং \n(ঘ) রাষ্ট্রপতির পদের এবং সংসদের নির্বাচনের জন্য ভোটার-তালিকা প্রস্তুত করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) উপরি-উক্ত দফাসমূহে নির্ধারিত দায়িত্বসমূহের অতিরিক্ত যেরূপ দায়িত্ব এই সংবিধান বা অন্য কোন আইনের দ্বারা নির্ধারিত হইবে, নির্বাচন কমিশন সেইরূপ দায়িত্ব পালন করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১২০। নির্বাচন কমিশনের কর্মচারীগণ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২০। এই ভাগের অধীন নির্বাচন কমিশনের উপর ন্যস্ত দায়িত্ব পালনের জন্য যেরূপ কর্মচারীর প্রয়োজন হইবে, নির্বাচন কমিশন অনুরোধ করিলে রাষ্ট্রপতি নির্বাচন কমিশনকে সেইরূপ কর্মচারী প্রদানের ব্যবস্থা করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১২১। প্রতি এলাকার জন্য একটিমাত্র ভোটার তালিকা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২১। সংসদের নির্বাচনের জন্য প্রত্যেক আঞ্চলিক নির্বাচনী এলাকার একটি করিয়া ভোটার-তালিকা থাকিবে এবং ধর্ম, জাত, বর্ণ ও নারী-পুরুষভেদের ভিত্তিতে ভোটারদের বিন্যস্ত করিয়া কোন বিশেষ ভোটার-তালিকা প্রণয়ন করা যাইবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১২২। ভোটার-তালিকায় নামভুক্তির যোগ্যতা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২২। (১) প্রাপ্ত বয়স্কের ভোটাধিকার-ভিত্তিতে সংসদের নির্বাচন অনুষ্ঠিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) কোন ব্যক্তি সংসদের নির্বাচনের জন্য নির্ধারিত কোন নির্বাচনী এলাকায় ভোটার-তালিকাভু্ক্ত হইবার অধিকারী হইবেন, যদি \n(ক) তিনি বাংলাদেশের নাগরিক হন; \n(খ) তাঁহার বয়স আঠার বৎসরের কম না হয়; \n(গ) কোন যোগ্য আদালত কর্তৃক তাঁহার সম্পর্কে অপ্রকৃতিস্থ বলিয়া ঘোষণা বহাল না থাকিয়া থাকে; \nঘ) তিনি ঐ নির্বাচনী এলাকার অধিবাসী বা আইনের দ্বারা ঐ নির্বাচনী এলাকার অধিবাসী বিবেচিত হন; এবং \n(ঙ) তিনি ১৯৭২ সালের বাংলাদেশ যোগসাজশকারী (বিশেষ ট্রাইব্যুনাল) আদেশের অধীন কোন অপরাধের জন্য দণ্ডিত না হইয়া থাকেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n \n\n \n\n \n\n \n\n১২৩। নির্বাচন-অনুষ্ঠানের সময় \n\n১২৪। নির্বাচন সম্পর্কে সংসদের বিধান প্রণয়নের ক্ষমতা \n\n১২৫। নির্বাচনী আইন ও নির্বাচনের বৈধতা \n\n১২৬। নির্বাচন কমিশনকে নির্বাহী কর্তৃপক্ষের সহায়তাদান",
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
