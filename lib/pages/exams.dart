import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';
import '../globals.dart';

import 'package:project1/models/ExamModel.dart';

class ExamsPage extends StatefulWidget {
  @override
  _ExamsPageState createState() => _ExamsPageState();
}

class _ExamsPageState extends State<ExamsPage> {
  GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  GlobalKey <RefreshIndicatorState> refreshKey = GlobalKey <RefreshIndicatorState>();
  ExamHelper _examHelper;
  List<ExamModel> exams = [];
  bool isLoading;

  Future<Null> refreshList() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 2));
    this._loadDB();
    this._showSnackbar("তথ্য হালনাগাদ হয়েছে!");
    return null;
  }
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }
  _loadDB() async{
    await Future.delayed(Duration(seconds: 1)); // THIS LITLE LINE!!!
    var newexans = await _examHelper.getAllExams();
    newexans = newexans.reversed.toList();
    setState(() {
      exams = newexans;
      isLoading = false;
    });
    if(exams.length == 0) {
      _showSnackbar("আপনি এখনও কোন পরীক্ষা দেননি!");
    }
  }

  @override
  void initState() {
    super.initState();
    _examHelper = ExamHelper();
    isLoading = true;
    _loadDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("ফলাফলসমুহ"),
        // automaticallyImplyLeading: false,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.sync), 
        //     onPressed: () async{},
        //     tooltip: "সার্ভারের সাথে Sync করুন",
        //   ),
        // ],
        flexibleSpace: appBarStyle(),
      ),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async{
          await refreshList();
        },
        child: Column(children: <Widget>[
          // Container(
          //   margin: EdgeInsets.all(10),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       hintText: "Search from posts...",
          //     ),
          //     onChanged: (String str) {
          //       // this.searchData(str);
          //     },
          //   ),
          // ),
          Visibility(
            visible: isLoading,
            child: LinearProgressIndicator(backgroundColor: Colors.black12),
          ),
          SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
              // padding: EdgeInsets.all(5),
              itemCount: exams.length,
              itemBuilder: (BuildContext context, int index) {
                return 
                Card(
                  color: Colors.blue[50],
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(children: <Widget>[
                          Flexible(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(DateFormat('MMMM d, y KK:mm a').format(DateFormat('yyyy-MM-dd hh:mm:ss').parse(exams[index].createdat)), style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.purple[700]),),
                                Text('মোট প্রশ্নঃ ' + exams[index].totalqstn.toString() + 'টি, সময়ঃ ' + exams[index].duration.toString() + ' মিনিট'),
                                Text('উত্তর প্রদানঃ ' + (exams[index].rightanswer + exams[index].wronganswer).toString() + 'টি, সঠিকঃ ' + exams[index].rightanswer.toString() + 'টি, ভুলঃ ' + exams[index].wronganswer.toString() + 'টি'),
                                Text('প্রাপ্ত নম্বরঃ ' + (exams[index].rightanswer - (exams[index].wronganswer * 0.5)).toString() + ' / ' + exams[index].totalqstn.toString(), style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              ]
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                CircularPercentIndicator(
                                  radius: 75.0,
                                  lineWidth: 5.0,
                                  animation: true,
                                  animationDuration: 1400,
                                  percent: ((exams[index].rightanswer - (exams[index].wronganswer * 0.5))/exams[index].totalqstn >= 0) ? (exams[index].rightanswer - (exams[index].wronganswer * 0.5))/exams[index].totalqstn : 0,
                                  center: new Text(
                                    (((exams[index].rightanswer - (exams[index].wronganswer * 0.5))/exams[index].totalqstn) * 100).toStringAsFixed(2) + '%',
                                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'Raleway'),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.purple[700],
                                ),
                              ],
                            ),
                          ),
                        ],),
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(5)),
                  // ),
                  elevation: 2,
                );
              },
            ),
          ),
          SizedBox(height: 5,),
        ],),
      ),
    );
  }
}