import 'package:flutter/material.dart';
import '../globals.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ইতিহাস"),
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
      Text("সংবিধানের সংক্ষিপ্ত ইতিহাস", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
      SizedBox(height: 3,),
      Divider(),
      Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: <Widget>[
          Text(
            "সংবিধান প্রণয়নের উদ্দেশ্যে ১৯৭২ সালের ১১ই এপ্রিল ড. কামাল হোসেনকে সভাপতি করে ৩৪ সদস্যের একটি কমিটি গঠন করা হয়। একই বছরের ১৭ই এপ্রিল থেকে ৩রা অক্টোবর পর্যন্ত এই কমিটি বিভিন্ন পর্যায়ে বৈঠক করে। জনগণের মতামত সংগ্রহের জন্য মতামত আহবান করা হয়। সংগৃহীত মতামত থেকে ৯৮টি সুপারিশ গ্রহণ করা হয়। ১৯৭২ সালের ১২ অক্টোবর গণপরিষদের দ্বিতীয় অধিবেশনে তৎকালীন আইনমন্ত্রী ড. কামাল হোসেন খসড়া সংবিধান বিল আকারে উত্থাপন করেন। ১৯৭২ সালের ৪ নভেম্বর গণপরিষদে বাংলাদেশের সংবিধান গৃহীত হয় এবং ১৬ ডিসেম্বর ১৯৭২ (বিজয় দিবস) থেকে কার্যকর হয়। গণপরিষদে সংবিধানের উপর বক্তব্য রাখতে গিয়ে বঙ্গবন্ধু বলেন,", 
            style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10,),
          Text(
            "'এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে।'", 
            style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic), textAlign: TextAlign.center,
          ),
          SizedBox(height: 15,),
          Text(
            "সংবিধান লেখার পর এর বাংলা ভাষারূপ পর্যালোচনার জন্য ড. আনিসুজ্জামানকে আহবায়ক, সৈয়দ আলী আহসান এবং মযহারুল ইসলামকে ভাষা বিশেষজ্ঞ হিসেবে একটি কমিটি গঠন করে পর্যালোচনার ভার দেয়া হয়। গণপরিষদ ভবন, যা বর্তমানে প্রধানমন্ত্রীর সরকারি বাসভবন, সেখানে সংবিধান প্রণয়ন কমিটির বৈঠকে সহযোগিতা করেন ব্রিটিশ আইনসভার খসড়া আইন-প্রণেতা আই গাথরি।", 
          style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15,),
          Text(
            "সংবিধান ছাপাতে ১৪ হাজার টাকা ব্যয় হয়েছিলো। সংবিধান অলংকরণের জন্য পাঁচ সদস্যের কমিটি করা হয়েছিল যার প্রধান ছিলেন শিল্পাচার্য জয়নুল আবেদিন। এই কমিটির সদস্য ছিলেন শিল্পী হাশেম খান, জনাবুল ইসলাম, সমরজিৎ রায় চৌধুরী ও আবুল বারক আলভী। শিল্পী হাশেম খান অলংকরণ করেছিলেন। ১৯৪৮ সালে তৈরী ক্র্যাবটি ব্রান্ডের দুটি অফসেট মেশিনে সংবিধানটি ছাপা হয়।\n\nগণপ্রজাতন্ত্রী বাংলাদেশের সংবিধান ১৯৭২ সালের ৪ নভেম্বর গণপরিষদে গৃহীত হয় এবং একই বছর ১৬ ডিসেম্বর বিজয় দিবসে বলবৎ হয়।\n\nমূল সংবিধানের কপিটি বাংলাদেশ জাতীয় জাদুঘরে সংরক্ষিত আছে।", 
            style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
          ),
        ]),
      ),
    ],)
    );
  }
}