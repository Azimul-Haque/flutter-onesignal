import 'package:flutter/material.dart';
import '../globals.dart';

class AmmendmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সংশোধনী"),
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
    body: ListView(children: <Widget>[
      SizedBox(height: 10,),
      Text("সংবিধানের সংশোধনীসমূহ", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
      SizedBox(height: 3,),
      Divider(),
      Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "সংবিধানের প্রথম সংশোধনী বিল পাস হয় ১৯৭৩ সালের ১৫ জুলাই। সংবিধানের প্রথম সংশোধনীটি ছিল যুদ্ধাপরাধীসহ অন্যান্য মানবতাবিরোধী অপরাধীদের বিচার নিশ্চিত করা। ১৯৭১ সালের মুক্তিযুদ্ধের পরে এই সংশোধনীর মাধ্যমে যুদ্ধাপরাধীদের বিচার নিশ্চিত করা হয়। তৎকালীন আইনমন্ত্রী মনোরঞ্জন ধর বিলটি সংসদে উত্থাপন করেন। ২৫৪-০ ভোটে বিলটি পাস হয়। তিনজন ভোটার ওই সময় ভোটদানে বিরত থাকেন। পরে এটি ১৯৭৩ সালের ১৭ জুলাই রাষ্ট্রপতির অনুমোদন পায়।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "দ্বিতীয় সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "১৯৭৩ সালের ২০ সেপ্টেম্বর সংবিধানের দ্বিতীয় সংশোধনী বিল পাস হয়। এতে সংবিধানের কয়েকটি অনুচ্ছেদে (২৬, ৬৩, ৭২ ও ১৪২) সংশোধন আনা হয়। অভ্যন্তরীণ গোলযোগ বা বহিরাক্রমণে দেশের নিরাপত্তা ও অর্থনৈতিক জীবন বাধাগ্রস্ত হলে ‘জরুরি অবস্থা’ ঘোষণার বিধান চালু করা হয় এই সংশোধনীর মাধ্যমে। আইনমন্ত্রী মনোরঞ্জন ধর বিলটি সংসদে উত্থাপন করলে ২৬৭-০ ভোটে তা পাস হয়। সংসদের তৎকালীন বিরোধী দল ও স্বতন্ত্র সংসদেরা বিল পাসের সময় সংসদ থেকে ওয়াকআউট করেন। বিলটি পাসের দুইদিনের মাথায় ২২ সেপ্টেম্বর এটি রাষ্ট্রপতির অনুমোদন পায়।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "তৃতীয় সংশোধনী, ১৯৭৪", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "ভারত ও বাংলাদেশের সীমানা নির্ধারণী একটি চুক্তি বাস্তবায়ন করার জন্য ১৯৭৪ সালের ২৩ নভেম্বর এ সংশোধনী আনা হয়। এই সংশোধনীর মাধ্যমে বাংলাদেশ-ভারত সীমান্ত চুক্তি অনুমোদন এবং চুক্তি অনুযায়ী ছিটমহল ও অপদখলীয় জমি বিনিময় বিধান প্রণয়ন করা হয়।  আইনমন্ত্রী মনোরঞ্জন ধর উত্থাপিত বিলটি ২৬১-৭ ভোটে পাস হয়। রাষ্ট্রপতির অনুমোদন হয় ১৯৭৪ সালের ২৭শে নভেম্বর।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "চতুর্থ সংশোধনী, ১৯৭৫", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "১৯৭৫ সালের ২৫ জানুয়ারি এ সংশোধনীর মাধ্যমে বাংলাদেশের শাসন ব্যবস্থার পরিবর্তন ঘটানো হয়। সংসদীয় শাসন পদ্ধতির পরিবর্তে রাষ্ট্রপতি শাসিত শাসন পদ্ধতি চালু এবং বহুদলীয় রাজনীতির পরিবর্তে একদলীয় রাজনীতি প্রবর্তনে এই সংশোধনীর মূল কথা। আইনমন্ত্রী মনোরঞ্জন ধর সংশোধনীর বিষয়টি উত্থাপন করেন। বিলটি ২৯৪-০ ভোটে পাস হয়। বিলটি পাসের সময় সরকারি দলের সদস্য এমএজি ওসমানী ও ব্যারিস্টার মঈনুল ইসলাম সংসদ বর্জন করেন। বিলটি পাস হওয়ার দিন ২৫ জানুয়ারিই তা রাষ্ট্রপতির অনুমোদন পায়।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "পঞ্চম সংশোধনী, ১৯৭৯", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "জাতীয় সংসদে এ সংশোধনী আনা হয় ১৯৭৯ সালের ৬ এপ্রিল। ১৯৭৫ সালের ১৫ আগস্টের পর থেকে ১৯৭৯ সালের ৫ এপ্রিল পর্যন্ত সামরিক সরকারের যাবতীয় কর্মকাণ্ডকে বৈধতা দানসহ সংবিধানে এর মাধ্যমে বিসমিল্লাহির রাহমানির রাহিম সংযোজন করা হয়।  সংসদ নেতা শাহ আজিজুর রহমান ‍উত্থাপিত বিলটি ২৪১-০ ভোটে পাস হয়।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5,),
            Text( "মন্তব্যঃ সুপ্রীম কোর্ট কর্তৃক অবৈধ ঘোষিত এবং বাতিলকৃত।", style: TextStyle(color:Colors.red, fontSize: 13, height: 1.5), textAlign: TextAlign.justify,),
            Divider(height: 25,),
            
            Text( "ষষ্ঠ  সংশোধনী, ১৯৮১", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "১৯৮১ সালের ৮ জুলাই এ সংশোধনী আনা হয়। রাষ্ট্রপতি জিয়াউর রহমানের মৃত্যুর পর উপরাষ্ট্রপতি আব্দুস সাত্তার অস্থায়ী রাষ্ট্রপতির দায়িত্ব পালন করেছিলেন। সেই সময়ে বিএনপি রাষ্ট্রপতি পদে তাদের প্রার্থী হিসেবে আব্দুস সাত্তারকে মনোনয়ন দেয়। ষষ্ঠ সংশোধনীতে সেই পথটাই নিশ্চিত করা হয়। উপ-রাষ্ট্রপতি পদে বহাল থেকে রাষ্ট্রপতি পদে নির্বাচনের বিধান নিশ্চিত করা হয় এই সংশোধনীর মাধ্যমে। সংসদ নেতা শাহ আজিজুর রহমান  উত্থাপিত বিলটি ২৫২-০ ভোটে পাস হয়। এটি রাষ্ট্রপতির অনুমোদন পায় ওই বছরের ১০ জুলাই।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "সপ্তম সংশোধনী, ১৯৮৬", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "১৯৮২ সালের ২৪ মার্চ থেকে ১৯৮৬ সালের ১০ নভেম্বর পর্যন্ত দেশে সামরিক শাসন বহাল ছিল। ১৯৮৬ সালের ১১ নভেম্বর জাতীয় সংসদে সপ্তম সংশোধনীর মাধ্যমে এরশাদের ওই সামরিক শাসনে বৈধতা দেওয়া হয়। ১৯৮২ সালের ২৪শে মার্চ থেকে ১৯৮৬ সালের ৯ নভেম্বর পর্যন্ত সামরিক আইন বলবৎ থাকাকালীন সময়ে প্রণীত সব ফরমান, প্রধান সামরিক আইন প্রশাসকের আদেশ, নির্দেশ ও অধ্যাদেশসহ অন্যান্য  আইন অনুমোদন দেওয়া হয় এই সংশোধনীর মাধ্যমে। আইনমন্ত্রী বিচারপতি কে এম নুরুল ইসলাম উত্থাপিত সংবিধান সংশোধনী বিলটি ২২৩-০ ভোটে পাস হয়। ১০ নভেম্বরই এটি রাষ্ট্রপতির অনুমোদন পায়।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5,),
            Text( "মন্তব্যঃ সুপ্রীম কোর্ট কর্তৃক অবৈধ ঘোষিত এবং বাতিলকৃত।", style: TextStyle(color:Colors.red, fontSize: 13, height: 1.5), textAlign: TextAlign.justify,),
            Divider(height: 25,),
            
            Text( "অষ্টম  সংশোধনী, ১৯৮৮", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "১৯৮৮ সালের ৭ জুন সংবিধানে অষ্টম সংশোধনী আনা হয়। এ সংশোধনীর মাধ্যমে কয়েকটি গুরুত্বপূর্ণ অনুচ্ছেদে (২, ৩, ৫, ৩০ ও ১০০) পরিবর্তন আনা হয়। রাষ্ট্রধর্ম হিসেবে ইসলামকে স্বীকৃতিদান করা ও ঢাকার বাইরে ৬টি জেলায় হাইকোর্টের স্থায়ী বেঞ্চ স্থাপন করার বিধান চালু করা হয়। Dacca-এর নাম Dhaka এবং Bangali-এর নাম Bangladeshi-তে পরিবর্তন করা হয় এই সংশোধনীর মাধ্যমে। সংসদ নেতা ব্যারিস্টার মওদুদ আহমেদ উত্থাপিত এ বিলটি ২৫৪-০ ভোটে পাস হয়। এটি রাষ্ট্রপতির অনুমোদন পায় দু’দিন পর অর্থাৎ ৯ জুন। তবে পরবর্তীতে ঢাকার বাইরে হাইকোর্টের বেঞ্চ গঠনের বিষয়টি বাতিল করে দেন সর্বোচ্চ আদালত।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),

            Text( "নবম সংশোধনী, ১৯৮৯", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "নবম সংশোধনী আনা হয় ১৯৮৯ সালের ১০ জুলাই। এ সংশোধনীর মাধ্যমে রাষ্ট্রপতি ও উপরাষ্ট্রপতিকে নিয়ে কিছু বিধান সংযোজন করা হয়। এ সংশোধনীর আগে রাষ্ট্রপতি ও উপরাষ্ট্রপতি যতবার ইচ্ছা রাষ্ট্রপতি পদের জন্য নির্বাচন করতে পারতেন। এ সংশোধনীর পর অবস্থার পরিবর্তন হয়। রাষ্ট্রপতি পদে নির্বাচনের সঙ্গে একই সময়ে উপরাষ্ট্রপতি পদে নির্বাচন অনুষ্ঠান করা, রাষ্ট্রপতি পদে কোনও ব্যক্তির পর পর দুই মেয়াদে দায়িত্ব পালন সীমাবদ্ধ রাখা হয়।  উত্থাপনকারী সংসদ নেতা ব্যারিস্টার মওদুদ আহমদ। বিলটি ২৭২-০ ভোটে পাস হয়। রাষ্ট্রপতির অনুমোদন পায় ১১ জুলাই। অবশ্য দ্বাদশ সংশোধনীর পর এ সংশোধনীর কার্যকারিতা আর নেই।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "দশম  সংশোধনী, ১৯৯০", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই বিলটি পাস হয়  ১৯৯০ সালের ১২ জুন । রাষ্ট্রপতির কার্যকালের মেয়াদ শেষ হওয়ার পূর্বে ১৮০ দিনের মধ্যে রাষ্ট্রপতি নির্বাচনের ব্যাপারে সংবিধানের ১২৩(২) অনুচ্ছেদের বাংলা ভাষ্য সংশোধন ও সংসদে মহিলাদের ৩০টি আসন আরও ১০ বছর কালের জন্য সংরক্ষণ করার বিধান করা হয়। আইনমন্ত্রী হাবিবুল ইসলাম উত্থাপিত বিলটি ২২৬-০ ভোটে পাস হয়। এটি রাষ্ট্রপতির অনুমোদন হয় ১৯৯০ সালের ২৩শে জুন।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "একাদশ সংশোধনী, ১৯৯১", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "গণঅভ্যুত্থানে এইচ এম এরশাদের পতনের পর বিচারপতি মো. সাহাবুদ্দিনের দায়িত্ব গ্রহণ নিয়ে ১৯৯১ সালে ৬ আগস্ট এ সংশোধনী পাস হয়। এর মাধ্যমে প্রধান বিচারপতি সাহাবুদ্দিন আহমেদের উপরাষ্ট্রপতি হিসেবে নিয়োগদান বৈধ ঘোষণা করা হয়। অস্থায়ী রাষ্ট্রপতি বিচারপতি সাহাবুদ্দীন আহমদের প্রধান বিচারপতির পদে ফিরে যাবার বিধান পাস করানো হয় এই সংশোধনীতে। আইনমন্ত্রী মির্জা গোলাম হাফিজ উত্থাপিত বিলটি ২৭৮-০ ভোটে পাস হয়। এ বিলটি সরকারি ও বিরোধী দলের ঐকমত্যের ভিত্তিতে পাস হয়। এটি রাষ্ট্রপতির অনুমোদন পায় ১০ আগস্ট।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "দ্বাদশ সংশোধনী, ১৯৯১", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "১৯৯১ সালের ৬ আগস্টের এ সংশোধনীর মাধ্যমে ১৭ বছর পর দেশে পুনরায় সংসদীয় সরকার প্রতিষ্ঠিত হয় এবং  উপরাষ্ট্রপতির পদ বিলুপ্ত করা হয়। সংশোধনীটি উত্থাপন করেন তৎকালীন প্রধানমন্ত্রী বেগম খালেদা জিয়া। ৩০৭-০ ভোটে বিলটি পাস হয়। একাদশের মত  এ বিলটিও সরকারি ও বিরোধী দলের ঐকমত্যের ভিত্তিতে পাস হয়। এটি রাষ্ট্রপতির অনুমোদন পায় ওই বছরের ১৮ সেপ্টেম্বর।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "ত্রয়োদশ সংশোধনী, ১৯৯৬", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "১৯৯৬ সালের ২৭ মার্চ এ সংশোধনীর মাধ্যমে সংবিধানে অবাধ ও সুষ্ঠু নির্বাচন অনুষ্ঠানের জন্য নিরপেক্ষ-নিদর্লীয় তত্ত্বাবধায়ক সরকার ব্যবস্থা প্রবর্তন করা হয়। আইন বিচার ও সংসদ বিষয়ক মন্ত্রী জমির উদ্দিন সরকার এই সংশোধনীটি উত্থাপন করেন। এটি ২৬৮-০ ভোটি পাস হয়। রাষ্ট্রপতির অনুমোদন পায় ২৮ মার্চ।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5,),
            Text( "মন্তব্যঃ সুপ্রীম কোর্ট কর্তৃক অবৈধ ঘোষিত এবং বাতিলকৃত।", style: TextStyle(color:Colors.red, fontSize: 13, height: 1.5), textAlign: TextAlign.justify,),
            Divider(height: 25,),
            
            Text( "চতুর্দশ  সংশোধনী, ২০০৪", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "২০০৪ সালের ১৬ মে এ সংশোধনী আনা হয়। এ সংশোধনীর মাধ্যমে সংরক্ষিত মহিলা আসন ৩০ থেকে ৪৫টি করা হয়। সুপ্রিম কোর্টের বিচারপতিদের অবসরের বয়সসীমা ৬৫ থেকে ৬৭ বছর করা হয়। এছাড়া রাষ্ট্রপতি ও প্রধানমন্ত্রীর কার্যালয়ে রাষ্ট্রপতি ও প্রধানমন্ত্রীর ছবি এবং সরকারি ও আধা সরকারি, স্বায়ত্তশাসিত প্রতিষ্ঠান ও বিদেশে বাংলাদেশ মিশনে প্রধানমন্ত্রীর প্রতিকৃতি বা ছবি প্রদর্শনের বিধান করা হয়। আইনমন্ত্রী মওদুদ আহমেদ উত্থাপিত বিলটি ২২৬-১ ভোটে এটি পাস হয়। এটি রাষ্ট্রপতির অনুমোদন পায় ১৭ মে।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "পঞ্চদশ সংশোধনী, ২০১১", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "সংবিধান আইন ২০১১ (পঞ্চদশ সংশোধনী) পাস হয় ২০১১ সালের ৩০শে জুন এবং রাষ্ট্রপতির অনুমোদন হয় ২০১১সালের ৩রা জুলাই। এই সংশোধনী দ্বারা সংবিধানে ধর্মনিরপেক্ষতা ও ধর্মীয় স্বাধীনতা পুনর্বহাল করা হয় এবং রাষ্ট্রীয় মূলনীতি হিসেবে জাতীয়তাবাদ, সমাজতন্ত্র, গণতন্ত্র ও ধর্মনিরপেক্ষতার নীতি সংযোজন করা হয়। এই সংশোধনীর মাধ্যমে দেশের স্বাধীনতা যুদ্ধের নায়ক শেখ মুজিবুর রহমানকে জাতির জনক হিসেবে স্বীকৃতিও দেওয়া হয়। এই সংশোধনীর দ্বারা তত্ত্বাবধায়ক সরকার ব্যবস্থা বাতিল করা হয়, জাতীয় সংসদে মহিলাদের জন্য সংরক্ষিত আসন সংখ্যা বিদ্যমান ৪৫-এর স্থলে ৫০ করা হয়। সংবিধানে ৭ অনুচ্ছেদের পরে ৭ (ক) ও ৭ (খ) অনুচ্ছেদ সংযোজন করে সংবিধান বহির্ভূত পন্থায় রাষ্ট্রীয় ক্ষমতা দখলের পথ রুদ্ধ করা হয়। এই সংশোধনীর বিষয়টি উত্থাপন করেন সেই সময়ের আইন, বিচার ও সংসদ বিষয়কমন্ত্রী ব্যারিস্টার শফিক আহমদ। বিরোধী দল বিএনপির বর্জনের মধ্যে ২৯১-১ ভোটে বিলটি পাস হয়।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(height: 25,),
            
            Text( "ষোড়শ সংশোধনী, ২০১৪", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "২০১৪ সালের ১৭ সেপ্টেম্বরে এই সংশোধনী আনা হয়। ৭২ এর সংবিধানের ৯৬ অনুচ্ছেদ পুনঃস্থাপনের মাধ্যমে বিচারপতিদের অপসারণের ক্ষমতা সংসদকে ফিরিয়ে দেওয়ার বিধান পাস করা হয় এই সংশোধনীর মাধ্যমে। এটি উত্থাপন করেন আইনমন্ত্রী অ্যাডভোকেট আনিসুল হক। ৩৫০ জন সংসদ সদস্যের মধ্যে ৩২৭-০ জনের ভোটে সর্বসম্মতভাবে পাস হয় বিলটি। বিরোধী দল জাতীয় পার্টি বিলটির পক্ষে ভোট দেয়। পরে হাইকোর্ট একে অবৈধ ঘোষণা করে রায় দেয়। আপিল বিভাগও ওই রায় বহাল রাখে।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 5,),
            Text( "মন্তব্যঃ সুপ্রীম কোর্ট কর্তৃক অবৈধ ঘোষিত এবং বাতিলকৃত।", style: TextStyle(color:Colors.red, fontSize: 13, height: 1.5), textAlign: TextAlign.justify,),
            Divider(height: 25,),
            
            Text( "সপ্তদশ সংশোধনী, ২০১৮", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "সর্বশেষ রবিবার সংসদে সংরক্ষিত নারী আসনের সংসদ সদস্য নির্বাচনের বিধি আরও ২৫ বছর বহাল রাখার প্রস্তাব সম্বলিত সংবিধানের সপ্তদশ সংশোধনী বিল পাস হয়েছে। সংসদের ৩৫০ জন সংসদ সদস্যের মধ্যে ২৯৮-০ ভোটে বিলটি পাস হয়। আইনমন্ত্রী আনিসুল হক এ প্রস্তাব উত্থাপন করেন। রাষ্ট্রপতি বিলটির অনুমোদন দিলে এটি আইনে পরিণত হয়।", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
          ]
        ),
      ),
    ],)
    );
  }
}