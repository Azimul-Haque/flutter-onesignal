import 'package:flutter/material.dart';
import '../../globals.dart';

class PartOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("প্রথম ভাগঃ প্রজাতন্ত্র"),
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
            "(প্রথম ভাগ) প্রজাতন্ত্র",
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
            title: Text('১৷ প্রজাতন্ত্র'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '১৷ বাংলাদেশ একটি একক, স্বাধীন ও সার্বভৌম প্রজাতন্ত্র, যাহা “গণপ্রজাতন্ত্রী বাংলাদেশ” নামে পরিচিত হইবে৷',
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          ExpansionTile(
            title: Text('২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানার অন্তর্ভুক্ত হইবে',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(ক) ১৯৭১ খ্রীষ্টাব্দের মার্চ মাসের ২৬ তারিখে স্বাধীনতা-ঘোষণার অব্যবহিত পূর্বে যে সকল এলাকা লইয়া পূর্ব পাকিস্তান গঠিত ছিল এবং সংবিধান (তৃতীয় সংশোধন) আইন, ১৯৭৪-এ অন্তর্ভুক্ত এলাকা বলিয়া উল্লিখিত এলাকা, কিন্তু উক্ত আইনে বহির্ভূত এলাকা বলিয়া উল্লিখিত এলাকা তদ্‌বহির্ভূত; এবং',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(খ) যে সকল এলাকা পরবর্তীকালে বাংলাদেশের সীমানাভুক্ত হইতে পারে৷',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('২ক৷ রাষ্ট্রধর্ম'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '২ক। প্রজাতন্ত্রের রাষ্ট্রধর্ম ইসলাম, তবে হিন্দু, বৌদ্ধ, খ্রীষ্টানসহ অন্যান্য ধর্ম পালনে রাষ্ট্র সমমর্যাদা ও সমঅধিকার নিশ্চিত করিবেন।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৩৷ রাষ্ট্রভাষা'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৩৷ প্রজাতন্ত্রের রাষ্ট্রভাষা বাংলা৷',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪৷ (১) প্রজাতন্ত্রের জাতীয় সঙ্গীত “আমার সোনার বাংলা”র প্রথম দশ চরণ৷',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(২) প্রজাতন্ত্রের জাতীয় পতাকা হইতেছে সবুজ ক্ষেত্রের উপর স্থাপিত রক্তবর্ণের একটি ভরাট বৃত্ত৷',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৩) প্রজাতন্ত্রের জাতীয় প্রতীক হইতেছে উভয় পার্শ্বে ধান্যশীর্ষবেষ্টিত, পানিতে ভাসমান জাতীয় পুষ্প শাপলা, তাহার শীর্ষদেশে পাটগাছের তিনটি পরস্পর-সংযুক্ত পত্র, তাহার উভয় পার্শ্বে দুইটি করিয়া তারকা৷',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                  title: Text(
                '(৪) উপরি-উক্ত দফাসমূহ-সাপেক্ষে জাতীয় সঙ্গীত, পতাকা ও প্রতীক সম্পর্কিত বিধানাবলী আইনের দ্বারা নির্ধারিত হইবে৷',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৪ক। জাতির পিতার প্রতিকৃতি'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৪ক। জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের প্রতিকৃতি রাষ্ট্রপতি, প্রধানমন্ত্রী, স্পীকার ও প্রধান বিচারপতির কার্যালয় এবং সকল সরকারী ও আধা-সরকারী অফিস, স্বায়ত্তশাসিত প্রতিষ্ঠান, সংবিধিবদ্ধ সরকারী কর্তৃপক্ষের প্রধান ও শাখা কার্যালয়, সরকারী ও বেসরকারী শিক্ষা প্রতিষ্ঠান, বিদেশে অবস্থিত বাংলাদেশের দূতাবাস ও মিশনসমূহে সংরক্ষণ ও প্রদর্শন করিতে হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),
          ExpansionTile(
            title: Text('৫৷ রাজধানী'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৫৷ (১) প্রজাতন্ত্রের রাজধানী ঢাকা৷',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                title: Text(
                  '(২) রাজধানীর সীমানা আইনের দ্বারা নির্ধারিত হইবে৷',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('৬৷ নাগরিকত্ব'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৬। (১) বাংলাদেশের নাগরিকত্ব আইনের দ্বারা নির্ধারিত ও নিয়ন্ত্রিত হইবে।',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                title: Text(
                  '(২) বাংলাদেশের জনগণ জাতি হিসাবে বাঙালী এবং নাগরিকগণ বাংলাদেশী বলিয়া পরিচিত হইবেন।',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('৭৷ সংবিধানের প্রাধান্য'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৭৷ (১) প্রজাতন্ত্রের সকল ক্ষমতার মালিক জনগণ; এবং জনগণের পক্ষে সেই ক্ষমতার প্রয়োগ কেবল এই সংবিধানের অধীন ও কর্তৃত্বে কার্যকর হইবে৷',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                title: Text(
                  '(২) জনগণের অভিপ্রায়ের পরম অভিব্যক্তিরূপে এই সংবিধান প্রজাতন্ত্রের সর্বোচ্চ আইন এবং অন্য কোন আইন যদি এই সংবিধানের সহিত অসমঞ্জস হয়, তাহা হইলে সেই আইনের যতখানি অসামঞ্জস্যপূর্ণ, ততখানি বাতিল হইবে৷',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৭ক। (১) কোন ব্যক্তি শক্তি প্রদর্শন বা শক্তি প্রয়োগের মাধ্যমে বা অন্য কোন অসাংবিধানিক পন্থায় -',
                textAlign: TextAlign.justify,
              )),
              ListTile(
                title: Text(
                  '(ক) এই সংবিধান বা ইহার কোন অনুচ্ছেদ রদ, রহিত বা বাতিল বা স্থগিত করিলে কিংবা উহা করিবার জন্য উদ্যোগ গ্রহণ বা ষড়যন্ত্র করিলে ; কিংবা',
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '(খ) এই সংবিধান বা ইহার কোন বিধানের প্রতি নাগরিকের আস্থা, বিশ্বাস বা প্রত্যয় পরাহত করিলে কিংবা উহা করিবার জন্য উদ্যোগ গ্রহণ বা ষড়যন্ত্র করিলে-',
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  'তাহার এই কার্য রাষ্ট্রদ্রোহিতা হইবে এবং ঐ ব্যক্তি রাষ্ট্রদ্রোহিতার অপরাধে দোষী হইবে।',
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '(২) কোন ব্যক্তি (১) দফায় বর্ণিত-',
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '(ক) কোন কার্য করিতে সহযোগিতা বা উস্কানি প্রদান করিলে; কিংবা',
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '(খ) কার্য অনুমোদন, মার্জনা, সমর্থন বা অনুসমর্থন করিলে-',
                  textAlign: TextAlign.justify,
                ),
              ),
              ListTile(
                title: Text(
                  '(৩) এই অনুচ্ছেদে বর্ণিত অপরাধে দোষী ব্যক্তি প্রচলিত আইনে অন্যান্য অপরাধের জন্য নির্ধারিত দণ্ডের মধ্যে সর্বোচ্চ দণ্ডে দণ্ডিত হইবে।',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য'),
            children: <Widget>[
              ListTile(
                  title: Text(
                '৭খ।সংবিধানের ১৪২ অনুচ্ছেদে যাহা কিছুই থাকুক না কেন, সংবিধানের প্রস্তাবনা, প্রথম ভাগের সকল অনুচ্ছেদ, দ্বিতীয় ভাগের সকল অনুচ্ছেদ, নবম-ক ভাগে বর্ণিত অনুচ্ছেদসমূহের বিধানাবলী সাপেক্ষে তৃতীয় ভাগের সকল অনুচ্ছেদ এবং একাদশ ভাগের ১৫০ অনুচ্ছেদসহ সংবিধানের অন্যান্য মৌলিক কাঠামো সংক্রান্ত অনুচ্ছেদসমুহের বিধানাবলী সংযোজন, পরিবর্তন, প্রতিস্থাপন, রহিতকরণ কিংবা অন্য কোন পন্থায় সংশোধনের অযোগ্য হইবে।',
                textAlign: TextAlign.justify,
              )),
            ],
          ),

          // NEW DESIGN...
          // NEW DESIGN...
          // NEW DESIGN...
          // Padding(
          //   padding: EdgeInsets.all(15),
          //   // child: Column(children: <Widget>[
          //   //   Text(
          //   //     "১৷ প্রজাতন্ত্র \n\n২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা \n\n২ক৷ রাষ্ট্রধর্ম \n\n৩৷ রাষ্ট্রভাষা \n\n৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক \n\n৪ক। জাতির পিতার প্রতিকৃতি \n\n৫৷ রাজধানী \n\n৬৷ নাগরিকত্ব \n\n৭৷ সংবিধানের প্রাধান্য \n\n৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ \n\n৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য",
          //   //     style:
          //   //         TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
          //   //     textAlign: TextAlign.justify,
          //   //   ),
          //   //   SizedBox(
          //   //     height: 10,
          //   //   ),
          //   // ]),
          //   child:
          //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          //           Widget>[
          //     Text(
          //       "১৷ প্রজাতন্ত্র \n\n২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা \n\n২ক৷ রাষ্ট্রধর্ম \n\n৩৷ রাষ্ট্রভাষা \n\n৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক \n\n৪ক। জাতির পিতার প্রতিকৃতি \n\n৫৷ রাজধানী \n\n৬৷ নাগরিকত্ব \n\n৭৷ সংবিধানের প্রাধান্য \n\n৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ \n\n৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য",
          //       style:
          //           TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
          //       textAlign: TextAlign.justify,
          //     ),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text(
          //       "প্রজাতন্ত্র",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 16,
          //           fontWeight: FontWeight.bold,
          //           height: 1.5),
          //     ),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text(
          //       "১৷ বাংলাদেশ একটি একক, স্বাধীন ও সার্বভৌম প্রজাতন্ত্র, যাহা “গণপ্রজাতন্ত্রী বাংলাদেশ” নামে পরিচিত হইবে৷",
          //       style:
          //           TextStyle(color: Colors.black, fontSize: 15, height: 1.5),
          //       textAlign: TextAlign.justify,
          //     ),
          //     Divider(
          //       height: 25,
          //     ),
          //     Text(
          //       "প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 16,
          //           fontWeight: FontWeight.bold,
          //           height: 1.5),
          //     ),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text(
          //       "২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানার অন্তর্ভুক্ত হইবে\n(ক) ১৯৭১ খ্রীষ্টাব্দের মার্চ মাসের ২৬ তারিখে স্বাধীনতা-ঘোষণার অব্যবহিত পূর্বে যে সকল এলাকা লইয়া পূর্ব পাকিস্তান গঠিত ছিল এবং সংবিধান (তৃতীয় সংশোধন) আইন, ১৯৭৪-এ অন্তর্ভুক্ত এলাকা বলিয়া উল্লিখিত এলাকা, কিন্তু উক্ত আইনে বহির্ভূত এলাকা বলিয়া উল্লিখিত এলাকা তদ্‌বহির্ভূত; এবং \n(খ) যে সকল এলাকা পরবর্তীকালে বাংলাদেশের সীমানাভুক্ত হইতে পারে৷",
          //       style:
          //           TextStyle(color: Colors.black, fontSize: 15, height: 1.5),
          //       textAlign: TextAlign.justify,
          //     ),
          //     Divider(
          //       height: 25,
          //     ),
          //     Text(
          //       "রাষ্ট্রধর্ম",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 16,
          //           fontWeight: FontWeight.bold,
          //           height: 1.5),
          //     ),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text(
          //       "২ক। প্রজাতন্ত্রের রাষ্ট্রধর্ম ইসলাম, তবে হিন্দু, বৌদ্ধ, খ্রীষ্টানসহ অন্যান্য ধর্ম পালনে রাষ্ট্র সমমর্যাদা ও সমঅধিকার নিশ্চিত করিবেন",
          //       style:
          //           TextStyle(color: Colors.black, fontSize: 15, height: 1.5),
          //       textAlign: TextAlign.justify,
          //     ),
          //     Divider(
          //       height: 25,
          //     ),
          //   ]),
          // ),
        ],
      ),
    );
  }
}
