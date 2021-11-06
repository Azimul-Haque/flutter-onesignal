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
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(
                "১১৮। নির্বাচন কমিশন প্রতিষ্ঠা \n\n১১৯। নির্বাচন কমিশনের দায়িত্ব \n\n১২০। নির্বাচন কমিশনের কর্মচারীগণ \n\n১২১। প্রতি এলাকার জন্য একটিমাত্র ভোটার তালিকা \n\n১২২। ভোটার-তালিকায় নামভুক্তির যোগ্যতা \n\n১২৩। নির্বাচন-অনুষ্ঠানের সময় \n\n১২৪। নির্বাচন সম্পর্কে সংসদের বিধান প্রণয়নের ক্ষমতা \n\n১২৫। নির্বাচনী আইন ও নির্বাচনের বৈধতা \n\n১২৬। নির্বাচন কমিশনকে নির্বাহী কর্তৃপক্ষের সহায়তাদান",
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
