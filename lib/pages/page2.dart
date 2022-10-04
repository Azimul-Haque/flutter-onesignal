import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../globals.dart';

class PageTwo extends StatefulWidget {
  var data;
  PageTwo(this.data);
  @override
  _PageTwoState createState() => _PageTwoState(this.data);
}

class _PageTwoState extends State<PageTwo> {
  String _longPostBN =
      "\n\nঅন্য সবার মতো এই অধমেরও একবার 'বিদেশ' যাবার সুযোগ হয়েছিল। 'বিলাত' শব্দটির অর্থ ইংল্যান্ড/ ইউরোপ হলেও আমি দিন কয়েক থেকে, যেই দেশে গিয়েছিলাম সেখান থেকে ফিরে এলে, সম্মানিত খালেদ স্যার 'বিলাত ফেরতদের' তালিকায় আমার নাম অন্তর্ভুক্ত করেন। আমি খুব বেশিদূরের কোন দেশে যাইনি। গিয়েছিলাম মালয়েশিয়া। দক্ষিণপূর্ব এশিয়ার দেশ মালয়েশিয়া তেরটি রাজ্য এবং তিনটি ঐক্যবদ্ধ প্রদেশ নিয়ে গঠিত। দেশটি এশিয়ার খাদ্য স্বর্গ হিসেবে পরিচিত। নানা বর্ণ, ধর্ম আর সংস্কৃতির মানুষের অবস্থানের ফলে এখানকার খাবারও বেশ বৈচিত্র্যময়। এসব পরে বলব। আগে বলি গেলাম কীভাবে।\n২০১৬ সালের ২৪ অক্টোবর। ক্লাস শেষ করে (বা না করেই হয়তো) নীলক্ষেতের দিকে যাচ্ছি। ভর দুপুর। তখন ভিসি চত্বর এলাকা পার হচ্ছি। বন্ধু মিশু ফোন করল। এই ছেলে UCL-এ এমএস করতে গিয়েছে গত বছর। যারা জানেন না UCL কী জিনিস, অনুগ্রহ করে গুগল করুন। তো মিশু ফোন দিয়ে বলল, 'তোরে জোয়ার্দার স্যার খুঁজতাসেন। একটু তাত্তারি আয় আইআইটিতে।' কথাটা শুনে হিম হয়ে গেলাম একটু। বুকের পানি শুকিয়ে গেল। জোয়ার্দার স্যার আমাকে খুঁজছেন! আমি কী এমন বড় অপরাধ করে ফেললাম! যারা স্যারকে চেনেন, তারা বুঝবেন আমার উদ্বেগের কারণ।\nস্যারের রুমের সামনে গিয়ে নক করলাম। স্যার ঢুকতে দিয়ে বললেন, 'আপনিই আজিমুল? আপনি কি জানেন আমি এমন একজনকে খুঁজছি যে নাকি খুব দুষ্টামি করে বেড়ায়, লেখালেখি করে, ছবি তুলতে পছন্দ করে, আর একটু-আধটু বন্ধু বানাতে পারে।' 'দুষ্টামি' বলতে স্যার কী বুঝালেন না বুঝলেও মনে মনে বললাম, 'স্যার পার্ফেক্ট ম্যাচ! আপনি যাকে খুঁজছেন - আমিই সেই।' কিন্তু মুখে অসহায় নিষ্পাপ চেহারা বজায় রেখে না বোঝার ভান করলাম। স্যার বললেন, 'কয়েকজন ফ্যাকাল্টি আপনার নাম সাজেস্ট করসে। তো বলেনতো ইয়াং বেঙ্গল কারা ছিলেন?' আমি বললাম কারা ছিলেন। এরপর জিজ্ঞেস করলেন বাংলা সাহিত্যের পঞ্চপাণ্ডবদের চিনি কি না। জানালাম তাঁদের ব্যাপারে। তবে বুঝতে পারছিলাম না স্যার কেন এসব জিজ্ঞেস করছেন। পরে বললেন, 'কোথাও যদি পাঠানো হয়, দেশকে রিপ্রেজেন্ট করতে পারব কী না?' না বুঝলেও গতানুগতিক বাঙালি ছাত্রদের মতো করে বললাম, 'অবশ্যই পারব স্যার। কোন সমস্যা নাই।' বলেই চিন্তায় পড়ে গেলাম। স্যার বললেন, 'Trans-Eurasia Information Network (TEIN) Youth E-Culture Exchange (Youth ECX)' নামক একটা কনফারেন্সে আমাকে মালয়েশিয়া পাঠানো হতে পারে; তবে ইউজিসির (বিশ্ববিদ্যালয় মঞ্জুরি কমিশন) এর কেউ একজন আমার ইন্টারভিউ নিবেন।";
  var data;
  _PageTwoState(this.data);
  // final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(
      content: Text(textForSnackbar),
    );
    ScaffoldMessenger.of(context).showSnackBar(_mySnackbar);
  }

  _showToast(String textToast) {
    Fluttertoast.showToast(
      msg: textToast,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(data["title"])),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          data["title"],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Written by: A. H. M. Azimul Haque",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Divider(
                          color: Colors.grey[850],
                          height: 10,
                        ),
                        Text(
                          data["body"] + data["body"] + _longPostBN,
                          style:
                              TextStyle(color: Colors.grey[850], fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("_________"),
                      ],
                    ))
              ],
            ),
            ElevatedButton(
              child: Text("Go Back"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlue),
              ),
              // hoverElevation: 5,
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                  _showToast("ফিরে যাওয়া হলো!");
                });
              },
            ),
          ],
        ));
  }
}
