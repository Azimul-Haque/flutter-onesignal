import 'package:flutter/material.dart';
import '../../globals.dart';

class PartSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ষষ্ঠ ভাগঃ বিচারবিভাগ"),
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
        Text("(ষষ্ঠ ভাগ) বিচারবিভাগ", style: TextStyle(color:Colors.green[800], fontSize: 18), textAlign: TextAlign.center,),
        SizedBox(height: 3,),
        Divider(),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(
              "১ম পরিচ্ছেদঃ সুপ্রীম কোর্ট \n\n৯৪। সুপ্রীম কোর্ট প্রতিষ্ঠা \n\n৯৫। বিচারক-নিয়োগ \n\n৯৬। বিচারকের পদের মেয়াদ \n\n৯৭। অস্থায়ী প্রধান বিচারপতি নিয়োগ \n\n৯৮। সুপ্রীম কোর্টের অতিরিক্ত বিচারকগণ \n\n৯৯। অবসর গ্রহণের পর বিচারগণের অক্ষমতা \n\n১০০। সুপ্রীম কোর্টের আসন \n\n১০১। হাইকোর্ট বিভাগের এখতিয়ার \n\n১০২। কতিপয় আদেশ ও নির্দেশ প্রভৃতি দানের ক্ষেত্রে হাইকোর্ট বিভাগের ক্ষমতা \n\n১০৩। আপীল বিভাগের এখতিয়ার \n\n১০৪। আপীল বিভাগের পরোয়ানা জারী ও নির্বাহ \n\n১০৫। আপীল বিভাগ কর্তৃক রায় বা আদেশ পুনর্বিবেচনা \n\n১০৬। সুপ্রীম কোর্টের উপদেষ্টামূলক এখতিয়ার \n\n১০৭। সুপ্রীম কোর্টের বিধি-প্রণয়ন-ক্ষমতা \n\n১০৮। 'কোর্ট অব রেকর্ড' রূপে সুপ্রীম কোর্ট \n\n১০৯। আদালতসমূহের উপর তত্ত্বাবধান ও নিয়ন্ত্রণ \n\n১১০। অধস্তন আদালত হইতে হাইকোর্ট বিভাগে মামলা স্থানান্তর \n\n১১১। সুপ্রীম কোর্টের রায়ের বাধ্যতামূলক কার্যকরতা \n\n১১২। সুপ্রীম কোর্টের সহায়তা \n\n১১৩। সুপ্রীম কোর্টের কর্মচারীগণ \n\n\n২য় পরিচ্ছেদঃ অধস্তন আদালত \n\n১১৪। অধস্তন আদালত-সমূহ প্রতিষ্ঠা \n\n১১৫। অধস্তন আদালতে নিয়োগ \n\n১১৬। অধস্তন আদালতসমূহের নিয়ন্ত্রণ ও শৃঙ্খলা \n\n১১৬ক। বিচারবিভাগীয় কর্মচারীগণ বিচারকার্য পালনের ক্ষেত্রে স্বাধীন \n\n\n৩য় পরিচ্ছেদঃ প্রশাসনিক ট্রাইব্যুনাল \n\n১১৭। প্রশাসনিক ট্রাইব্যুনালসমূহ \n\n\nষষ্ঠ ক ভাগ-জাতীয়দল [সংবিধান (পঞ্চদশ সংশোধন) আইন, ২০১১ (২০১১ সনের ১৪ নং আইন)-এর ৪১ ধারাবলে বিলুপ্ত।]", 
              style: TextStyle(color:Colors.black87, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10,),

          ]),
        ),
      ],),
    );
  }
}