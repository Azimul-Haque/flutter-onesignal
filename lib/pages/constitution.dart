import 'package:flutter/material.dart';
import '../globals.dart';
class ConstituionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সংবিধান"),
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
        SizedBox(height: 5,),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.assignment, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("প্রস্তাবনা"),
            subtitle: Text("সংবিধানের প্রস্তাবনা"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          // color: Color.fromRGBO(241, 248, 233, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.people_outline, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("প্রথম ভাগ"),
            subtitle: Text("প্রজাতন্ত্র"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(241, 248, 233, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.settings, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("দ্বিতীয় ভাগ"),
            subtitle: Text("রাষ্ট্র পরিচালনার মূলনীতি"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(220, 237, 200, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.fastfood, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("তৃতীয় ভাগ"),
            subtitle: Text("মৌলিক অধিকার"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(197, 225, 165, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.business_center, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("চতুর্থ ভাগ"),
            subtitle: Text("নির্বাহী বিভাগ"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(174, 213, 129, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.account_balance, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("পঞ্চম ভাগ"),
            subtitle: Text("আইনসভা"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(156, 204, 101, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.outlined_flag, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("ষষ্ঠ ভাগ"),
            subtitle: Text("বিচারবিভাগ"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(139, 195, 74, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.touch_app, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("সপ্তম ভাগ"),
            subtitle: Text("নির্বাচন"),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(124, 179, 69, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.monetization_on, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("অষ্টম ভাগ", style: TextStyle(color: Colors.white),),
            subtitle: Text("মহা হিসাব-নিরীক্ষক ও নিয়ন্ত্রক", style: TextStyle(color: Colors.white70),),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(104, 159, 56, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.work, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("নবম ভাগ", style: TextStyle(color: Colors.white),),
            subtitle: Text("বাংলাদেশের কর্মবিভাগ", style: TextStyle(color: Colors.white70),),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(85, 139, 47, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.edit, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("দশম ভাগ", style: TextStyle(color: Colors.white),),
            subtitle: Text("সংবিধান-সংশোধন", style: TextStyle(color: Colors.white70),),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(51, 105, 30, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.apps, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("একাদশ ভাগ", style: TextStyle(color: Colors.white),),
            subtitle: Text("বিবিধ", style: TextStyle(color: Colors.white70),),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(27, 94, 32, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.vpn_key, color: Colors.white), backgroundColor: Color.fromRGBO(142, 36, 170, 1.0),),
            title: Text("তফসিল", style: TextStyle(color: Colors.white),),
            subtitle: Text("৭ টি তফসিল", style: TextStyle(color: Colors.white70),),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              // Route route = MaterialPageRoute(builder: (context) => PageTwo(questions[index]));
              // Navigator.push(context, route);
              // _showSnackbar("তথ্য হালনাগাদ হয়েছে!");
            },
          ),
          color: Color.fromRGBO(25, 88, 30, 1.0),
          margin: EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
        ),
        SizedBox(height: 5,),
      ],)
    );
  }
}