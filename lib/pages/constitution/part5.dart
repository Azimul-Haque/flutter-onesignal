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
      body: ListView(children: <Widget>[
        SizedBox(height: 10,),
        Text("(পঞ্চম ভাগ) আইনসভা", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(
              "১ম পরিচ্ছেদঃ সংসদ \n\n৬৫। সংসদ-প্রতিষ্ঠা \n\n৬৬। সংসদে নির্বাচিত হইবার যোগ্যতা ও অযোগ্যতা \n\n৬৭। সদস্যদের আসন শূন্য হওয়া \n\n৬৮। সংসদ-সদস্যদের [পারিশ্রমিক] প্রভৃতি \n\n৬৯। শপথ গ্রহণের পূর্বে আসন গ্রহণ বা ভোট দান করিলে সদস্যের অর্থদন্ড \n\n৭০। রাজনৈতিক দল হইতে পদত্যাগ বা দলের বিপক্ষে ভোটদানের কারণে আসন শূন্য হওয়া \n\n৭১। দ্বৈত-সদস্যতায় বাধা \n\n৭২। সংসদের অধিবেশন \n\n৭৩। সংসদে রাষ্ট্রপতির ভাষণ ও বাণী \n\n৭৩ক। সংসদ সম্পর্কে মন্ত্রীগণের অধিকার \n\n৭৪। স্পীকার ও ডেপুটি স্পীকার \n\n৭৫। কার্যপ্রণালী-বিধি, কোরাম প্রভৃতি \n\n৭৬। সংসদের স্থায়ী কমিটিসমূহ \n\n৭৭। ন্যায়পাল \n\n৭৮। সংসদ ও সদস্যদের বিশেষ অধিকার ও দায়মুক্তি \n\n৭৯। সংসদ-সচিবালয় \n\n\n২য় পরিচ্ছেদঃ আইন প্রনয়ন ও অর্থসংক্রান্ত পদ্ধতি \n\n৮০। আইন প্রণয়ন পদ্ধতি \n\n৮১। অর্থবিল \n\n৮২। আর্থিক ব্যবস্থাবলীর সুপারিশ \n\n৮৩। সংসদের আইন ব্যতীত করারোপে বাধা \n\n৮৪। সংযুক্ত তহবিল ও প্রজাতন্ত্রের সরকারী হিসাব \n\n৮৫। সরকারী অর্থের নিয়ন্ত্রণ \n\n৮৬। প্রজাতন্ত্রের সরকারী হিসাবে প্রদেয় অর্থ \n\n৮৭। বার্ষিক আর্থিক বিবৃতি \n\n৮৮। সংযুক্ত তহবিলের উপর দায় \n\n৮৯। বার্ষিক আর্থিক বিবৃতি সম্পর্কিত পদ্ধতি \n\n৯০। নির্দিষ্টকরণ আইন \n\n৯১। সম্পূরক ও অতিরিক্ত মঞ্জুরী \n\n৯২। হিসাব, ঋণ প্রভৃতির উপর ভোট \n\n৯২ক। [বিলুপ্ত] \n\n\n৩য় পরিচ্ছেদঃ অধ্যাদেশপ্রণয়ন-ক্ষমতা \n\n৯৩। অধ্যাদেশপ্রণয়ন-ক্ষমতা", 
              style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10,),

          ]),
        ),
      ],),
    );
  }
}