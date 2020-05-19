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
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "দ্বিতীয় সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "তৃতীয় সংশোধনী, ১৯৭৪", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "চতুর্থ সংশোধনী, ১৯৭৫", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "পঞ্চম সংশোধনী, ১৯৭৯", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "ষষ্ঠ  সংশোধনী, ১৯৮১", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "সপ্তম সংশোধনী, ১৯৮৬", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "অষ্টম  সংশোধনী, ১৯৮৮", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "নবম সংশোধনী, ১৯৮৯", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
            Divider(),
            
            Text( "প্রথম সংশোধনী, ১৯৭৩", style: TextStyle(color:Colors.black, fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),),
            SizedBox(height: 10,),
            Text(
              "এই সংবিধান শহীদের রক্তে লিখিত, এ সংবিধান সমগ্র জনগণের আশা-আকাঙ্ক্ষার মূর্ত প্রতীক হয়ে বেঁচে থাকবে", 
              style: TextStyle(color:Colors.black, fontSize: 15, height: 1.5), textAlign: TextAlign.justify,
            ),
          ]
        ),
      ),
    ],)
    );
  }
}