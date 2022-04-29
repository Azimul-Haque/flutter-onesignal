import 'package:flutter/material.dart';
import '../../globals.dart';

class PartEight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("অষ্টম ভাগঃ মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক"),
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
            "(অষ্টম ভাগ) মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          ExpansionTile(
            title: Text('১২৭। মহা হিসাব-নিরীক্ষক পদের প্রতিষ্ঠা'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২৭। (১) বাংলাদেশের একজন মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক (অতঃপর "মহা হিসাব-নিরীক্ষক" নামে অভিহিত) থাকিবেন এবং তাঁহাকে রাষ্ট্রপতি নিয়োগদান করিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) এই সংবিধান ও সংসদ কর্তৃক প্রণীত যে কোন আইনের বিধানাবলী সাপেক্ষে মহা হিসাব-নিরীক্ষকের কর্মের শর্তাবলী রাষ্ট্রপতি আদেশের দ্বারা যেরূপ নির্ধারণ করিবেন, সেইরূপ হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১২৮। মহা-হিসাব নিরীক্ষকের দায়িত্ব'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২৮। (১) মহা হিসাব-নিরীক্ষক প্রজাতন্ত্রের সরকারী হিসাব এবং সকল আদালত, সরকারী কর্তৃপক্ষ ও কর্মচারীর সরকারী হিসাব নিরীক্ষা করিবেন ও অনুরূপ হিসাব সম্পর্কে রিপোর্টদান করিবেন এবং সেই উদ্দেশ্যে তিনি কিংবা সেই প্রয়োজনে তাঁহার দ্বারা ক্ষমতাপ্রাপ্ত কোন ব্যক্তি প্রজাতন্ত্রের কর্মে নিযুক্ত যে কোন ব্যক্তির দখলভুক্ত সকল নথি, বহি, রসিদ, দলিল, নগদ অর্থ, ষ্ট্যাম্প, জামিন, ভাণ্ডার বা অন্য প্রকার সরকারী সম্পত্তি পরীক্ষার অধিকারী হইবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(২) এই অনুচ্ছেদের (১) দফায় বর্ণিত বিধানাবলীর হানি না করিয়া বিধান করা হইতেছে যে, আইনের দ্বারা প্রত্যক্ষভাবে প্রতিষ্ঠিত কোন যৌথ সংস্থার ক্ষেত্রে আইনের দ্বারা যেরূপ ব্যক্তি কর্তৃক উক্ত সংস্থার হিসাব নিরীক্ষার ও অনুরূপ হিসাব সম্পর্কে রিপোর্ট দানের ব্যবস্থা করা হইয়া থাকে, সেইরূপ ব্যক্তি কর্তৃক অনুরূপ হিসাব নিরীক্ষা ও অনুরূপ হিসাব সম্পর্কে রিপোর্ট দান করা যাইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৩) এই অনুচ্ছেদের (১) দফায় নির্ধারিত দায়িত্বসমূহ ব্যতীত সংসদ আইনের দ্বারা যেরূপ নির্ধারণ করিবেন, মহা হিসাব-নিরীক্ষককে সেইরূপ দায়িত্বভার অর্পণ করিতে পারিবেন এবং এই দফার অধীন বিধানাবলী প্রণীত না হওয়া পর্যন্ত রাষ্ট্রপতি আদেশের দ্বারা অনুরূপ বিধানাবলী প্রণয়ন করিতে পারিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '(৪) এই অনুচ্ছেদের (১) দফার অধীন দায়িত্বপালনের ক্ষেত্রে মহা হিসাব-নিরীক্ষককে অন্য কোন ব্যক্তি বা কর্তৃপক্ষের পরিচালনা বা নিয়ন্ত্রণের অধীন করা হইবে না।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('১২৯। মহা হিসাব-নিরীক্ষকের কর্মের মেয়াদ'),
            children: <Widget>[
              ListTile(
                  title: SelectableText(
                '১২৯। (১) এই অনুচ্ছেদের বিধানাবলী-সাপেক্ষে মহা হিসাব-নিরীক্ষক তাঁহার দায়িত্ব গ্রহণের তারিখ হইতে পাঁচ বৎসর বা তাঁহার পঁয়ষট্টি বৎসর বয়স পূর্ণ হওয়া ইহার মধ্যে যাহা অগ্রে ঘটে, সেই কাল পর্যন্ত স্বীয় পদে বহাল থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: SelectableText(
                '১২৯। (১) এই অনুচ্ছেদের বিধানাবলী-সাপেক্ষে মহা হিসাব-নিরীক্ষক তাঁহার দায়িত্ব গ্রহণের তারিখ হইতে পাঁচ বৎসর বা তাঁহার পঁয়ষট্টি বৎসর বয়স পূর্ণ হওয়া ইহার মধ্যে যাহা অগ্রে ঘটে, সেই কাল পর্যন্ত স্বীয় পদে বহাল থাকিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                " \n\n \n\n \n\n১৩০। অস্থায়ী মহা হিসাব-নিরীক্ষক \n\n১৩১। প্রজাতন্ত্রের হিসাব-রক্ষার আকার ও পদ্ধতি \n\n১৩২। সংসদে মহা হিসাব-নিরীক্ষকের রিপোর্ট উপস্থাপন",
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
