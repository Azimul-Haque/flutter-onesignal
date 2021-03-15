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
          Padding(
            padding: EdgeInsets.all(15),
            // child: Column(children: <Widget>[
            //   Text(
            //     "১৷ প্রজাতন্ত্র \n\n২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা \n\n২ক৷ রাষ্ট্রধর্ম \n\n৩৷ রাষ্ট্রভাষা \n\n৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক \n\n৪ক। জাতির পিতার প্রতিকৃতি \n\n৫৷ রাজধানী \n\n৬৷ নাগরিকত্ব \n\n৭৷ সংবিধানের প্রাধান্য \n\n৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ \n\n৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য",
            //     style:
            //         TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
            //     textAlign: TextAlign.justify,
            //   ),
            //   SizedBox(
            //     height: 10,
            //   ),
            // ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              Text(
                "১৷ প্রজাতন্ত্র \n\n২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা \n\n২ক৷ রাষ্ট্রধর্ম \n\n৩৷ রাষ্ট্রভাষা \n\n৪৷ জাতীয় সঙ্গীত, পতাকা ও প্রতীক \n\n৪ক। জাতির পিতার প্রতিকৃতি \n\n৫৷ রাজধানী \n\n৬৷ নাগরিকত্ব \n\n৭৷ সংবিধানের প্রাধান্য \n\n৭ক। সংবিধান বাতিল, স্থগিতকরণ, ইত্যাদি অপরাধ \n\n৭খ। সংবিধানের মৌলিক বিধানাবলী সংশোধন অযোগ্য",
                style:
                    TextStyle(color: Colors.black87, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "প্রজাতন্ত্র",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "১৷ বাংলাদেশ একটি একক, স্বাধীন ও সার্বভৌম প্রজাতন্ত্র, যাহা “গণপ্রজাতন্ত্রী বাংলাদেশ” নামে পরিচিত হইবে৷",
                style:
                    TextStyle(color: Colors.black, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              Divider(
                height: 25,
              ),
              Text(
                "প্রজাতন্ত্রের রাষ্ট্রীয় সীমানা",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "২৷ প্রজাতন্ত্রের রাষ্ট্রীয় সীমানার অন্তর্ভুক্ত হইবে\n(ক) ১৯৭১ খ্রীষ্টাব্দের মার্চ মাসের ২৬ তারিখে স্বাধীনতা-ঘোষণার অব্যবহিত পূর্বে যে সকল এলাকা লইয়া পূর্ব পাকিস্তান গঠিত ছিল এবং সংবিধান (তৃতীয় সংশোধন) আইন, ১৯৭৪-এ অন্তর্ভুক্ত এলাকা বলিয়া উল্লিখিত এলাকা, কিন্তু উক্ত আইনে বহির্ভূত এলাকা বলিয়া উল্লিখিত এলাকা তদ্‌বহির্ভূত; এবং \n(খ) যে সকল এলাকা পরবর্তীকালে বাংলাদেশের সীমানাভুক্ত হইতে পারে৷",
                style:
                    TextStyle(color: Colors.black, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              Divider(
                height: 25,
              ),
              Text(
                "রাষ্ট্রধর্ম",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "২ক। প্রজাতন্ত্রের রাষ্ট্রধর্ম ইসলাম, তবে হিন্দু, বৌদ্ধ, খ্রীষ্টানসহ অন্যান্য ধর্ম পালনে রাষ্ট্র সমমর্যাদা ও সমঅধিকার নিশ্চিত করিবেন",
                style:
                    TextStyle(color: Colors.black, fontSize: 15, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              Divider(
                height: 25,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
