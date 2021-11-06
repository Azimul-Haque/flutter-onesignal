import 'package:flutter/material.dart';
import '../../globals.dart';

class PartEleven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("একাদশ ভাগঃ বিবিধ"),
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
            "(একাদশ ভাগ) বিবিধ",
            style: TextStyle(color: Colors.green[800], fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 3,
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "১৪৩। প্রজাতন্ত্রের সম্পত্তি \n\n১৪৪। সম্পত্তি ও কারবার প্রভৃতি-প্রসঙ্গে নির্বাহী কর্তৃত্ব \n\n১৪৫। চুক্তি ও দলিল \n\n১৪৫ক। আন্তর্জাতিক চুক্তি \n\n১৪৬। বাংলাদেশের নামে মামলা \n\n১৪৭। কতিপয় পদাধিকারীর পারিশ্রমিক প্রভৃতি \n\n১৪৮। পদের শপথ \n\n১৪৯। প্রচলিত আইনের হেফাজত \n\n১৫০। ক্রান্তিকালীন ও অস্থায়ী বিধানাবলী \n\n১৫১। রহিতকরণ \n\n১৫২। ব্যাখ্যা \n\n১৫৩। প্রবর্তন, উল্লেখ ও নির্ভরযোগ্য পাঠ",
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
