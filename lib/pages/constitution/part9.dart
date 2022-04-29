import 'package:flutter/material.dart';
import '../../globals.dart';

class PartNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("নবম ভাগঃ বাংলাদেশের কর্মবিভাগ"),
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
            "(নবম ভাগ) বাংলাদেশের কর্মবিভাগ",
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
            "১ম পরিচ্ছেদঃ সুপ্রীম কোর্ট",
            style: TextStyle(color: Colors.green[900], fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "১ম পরিচ্ছেদঃ কর্মবিভাগ \n\n১৩৩। নিয়োগ ও কর্মের শর্তাবলী \n\n১৩৪। কর্মের মেয়াদ \n\n১৩৫। অসামরিক সরকারী কর্মচারীদের বরখাস্ত প্রভৃতি \n\n১৩৬। কর্মবিভাগ-পুনর্গঠন \n\n\n২য় পরিচ্ছেদঃ সরকারী কর্ম কমিশন \n\n১৩৭। কমিশন-প্রতিষ্ঠা \n\n১৩৮। সদস্য-নিয়োগ \n\n১৩৯। পদের মেয়াদ \n\n১৪০। কমিশনের দায়িত্ব \n\n১৪১। বার্ষিক রিপোর্ট \n\n\nনবম-ক ভাগ জরুরী বিধানাবলী \n\n১৪১ক। জরুরী-অবস্থা ঘোষণা \n\n১৪১খ। জরুরী-অবস্থার সময় সংবিধানের কতিপয় অনুচ্ছেদের বিধান স্থগিতকরণ \n\n১৪১গ। জরুরী-অবস্থার সময় মৌলিক অধিকারসমূহ স্থগিতকরণ",
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
