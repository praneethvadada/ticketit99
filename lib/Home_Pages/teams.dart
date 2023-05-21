import 'package:flutter/material.dart';
//import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'graph1.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

var p1='Department 1';
var p2='20 Strength';
var p3='';
var p4='Open:15 Tickets      Close:10 Tickets';
var p2_2_1='Department 1';
var p2_2_2='20 Strength';
var p2_2_3='Open:15 Tickets      Close:10 Tickets';
var p2_3_1='Department 1';
var p2_3_2='20 Strength';
var p2_3_3='Open:15 Tickets      Close:10 Tickets';

double _animatedHeight = 280.0;
double _animatedHeight2=280.0;
double _animatedHeight3=280.0;
double _animatedHeight4=280.0;

class Teams extends StatelessWidget {
  const Teams({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: kpi(),
    );
  }
}

class kpi extends StatefulWidget {
  @override
  _kpiState createState() => _kpiState();
}

class _kpiState extends State<kpi> {
  double height = 250;

  //final Center categoriesScroller = Center(child: value());

  List<Widget> itemsData = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //final double categoryHeight = size.height*0.30;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: value(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child:Column(
                        children: [
                          SizedBox(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>setState((){
                                      _animatedHeight!=0.0?_animatedHeight=0.0:_animatedHeight=280.0;}),
                                    child:  Container(
                                      padding: EdgeInsets.symmetric(vertical: 10),

                                      //margin: const EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color.fromARGB(255, 231, 226, 226),
                                            width: 1,
                                          )),
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  child: Text("My Top 5 Customers",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily:
                                                      GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                      color: Color(0xfe333544),

                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                          Container(

                                            child:Padding(
                                              padding: const EdgeInsets.only(right: 40),
                                              child: Icon(
                                                color:Color(0xff0A4B68),
                                                Icons.arrow_drop_down,
                                                size: 27,
                                                //color: Colors.green,
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),//today

                                  AnimatedContainer(duration: const Duration(milliseconds: 3),
                                    // ignore: sort_child_properties_last
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children:<Widget>[
                                            SingleChildScrollView(
                                              child: Container(
                                                  padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
                                                  color: Colors.white,
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,

                                                    children: [

                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),

                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              // color:Colors.grey
                                                              //height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      radius: 20,
                                                                      backgroundImage: NetworkImage(
                                                                          'https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928_960_720.jpg'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: <Widget>[
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p3 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 13,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),





                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),//Time
                                                      SizedBox(height: 5,),




                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      radius: 20,
                                                                      backgroundImage: NetworkImage(
                                                                          'https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_960_720.jpg'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p3 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 13,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),


                                                      SizedBox(height: 5,),



                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[


                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      radius: 20,
                                                                      backgroundImage: NetworkImage(
                                                                          'https://cdn.pixabay.com/photo/2016/03/04/19/36/beach-1236581_960_720.jpg'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '  $p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p3 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 13,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  ' $p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),  ],
                                                        ),),                                         //dash

                                                      //progess
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ],//bigbox
                                        ),
                                      ),
                                    ),

                                    //child: new Text("Toggle Me"),
                                    height: _animatedHeight,
                                    //color: Colors.tealAccent,
                                    // width: 100.0,
                                  )
                                ],
                              ),
                            ),
                          ),

//SizedBox(height: 1,),



























                          SizedBox(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>setState((){
                                      _animatedHeight2!=0.0?_animatedHeight2=0.0:_animatedHeight2=280.0;}),
                                    child:  Container(
                                      padding: EdgeInsets.symmetric(vertical: 10),

                                      //margin: const EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color.fromARGB(255, 231, 226, 226),
                                            width: 1,
                                          )),
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  child: Text("My Top 5 Overdues",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      // fontSize: 19,
                                                      //   fontWeight: FontWeight.w500,
                                                      fontFamily:
                                                      GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                      color: Colors.red,

                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                          Container(

                                            child:Padding(
                                              padding: const EdgeInsets.only(right: 40),
                                              child: Icon(
                                                color:Color(0xff0A4B68),
                                                Icons.arrow_drop_down,
                                                size: 27,
                                                //color: Colors.green,
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),//today

                                  AnimatedContainer(duration: const Duration(milliseconds: 3),
                                    // ignore: sort_child_properties_last
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children:<Widget>[
                                            SingleChildScrollView(
                                              child: Container(
                                                  padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
                                                  color: Colors.white,
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,

                                                    children: [

                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),

                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              // color:Colors.grey
                                                              //height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P1'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: <Widget>[
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_2_1 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),





                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),//Time
                                                      SizedBox(height: 5,),




                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P2'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_2_2 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),


                                                      SizedBox(height: 5,),



                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[


                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P3'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '  $p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_2_3 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  ' $p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),  ],
                                                        ),),                                         //dash

                                                      //progess
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ],//bigbox
                                        ),
                                      ),
                                    ),

                                    //child: new Text("Toggle Me"),
                                    height: _animatedHeight2,
                                    //color: Colors.tealAccent,
                                    // width: 100.0,
                                  )
                                ],
                              ),
                            ),
                          ),

//SizedBox(height: 1,),




















                          SizedBox(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>setState((){
                                      _animatedHeight3!=0.0?_animatedHeight3=0.0:_animatedHeight3=280.0;}),
                                    child:  Container(
                                      padding: EdgeInsets.symmetric(vertical: 10),

                                      //margin: const EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color.fromARGB(255, 231, 226, 226),
                                            width: 1,
                                          )),
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  child: Text("My Top 5 Near due",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      // fontSize: 14,
                                                      fontFamily:
                                                      GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                      color: Colors.yellow,

                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                          Container(

                                            child:Padding(
                                              padding: const EdgeInsets.only(right: 40),
                                              child: Icon(
                                                color:Color(0xff0A4B68),
                                                Icons.arrow_drop_down,
                                                size: 27,
                                                //color: Colors.green,
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),//today

                                  AnimatedContainer(duration: const Duration(milliseconds: 3),
                                    // ignore: sort_child_properties_last
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children:<Widget>[
                                            SingleChildScrollView(
                                              child: Container(
                                                  padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
                                                  color: Colors.white,
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,

                                                    children: [

                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),

                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              // color:Colors.grey
                                                              //height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P1'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: <Widget>[
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_3_1 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),





                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),//Time
                                                      SizedBox(height: 5,),




                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P2'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_3_2 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),


                                                      SizedBox(height: 5,),



                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[


                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P3'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '  $p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_3_3 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  ' $p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),  ],
                                                        ),),                                         //dash

                                                      //progess
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ],//bigbox
                                        ),
                                      ),
                                    ),

                                    //child: new Text("Toggle Me"),
                                    height: _animatedHeight3,
                                    //color: Colors.tealAccent,
                                    // width: 100.0,
                                  )
                                ],
                              ),
                            ),
                          ),

//SizedBox(height: 1,),











































                          SizedBox(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: ()=>setState((){
                                      _animatedHeight4!=0.0?_animatedHeight4=0.0:_animatedHeight4=280.0;}),
                                    child:  Container(
                                      padding: EdgeInsets.symmetric(vertical: 10),

                                      //margin: const EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color.fromARGB(255, 231, 226, 226),
                                            width: 1,
                                          )),
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  child: Text("My Top 5 Ontime",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      // fontSize: 14,
                                                      fontFamily:
                                                      GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                      color: Colors.green,

                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),

                                          Container(

                                            child:Padding(
                                              padding: const EdgeInsets.only(right: 40),
                                              child: Icon(
                                                color:Color(0xff0A4B68),
                                                Icons.arrow_drop_down,
                                                size: 27,
                                                //color: Colors.green,
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),//today

                                  AnimatedContainer(duration: const Duration(milliseconds: 3),
                                    // ignore: sort_child_properties_last
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children:<Widget>[
                                            SingleChildScrollView(
                                              child: Container(
                                                  padding: EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
                                                  color: Colors.white,
                                                  child:Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,

                                                    children: [

                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),

                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              // color:Colors.grey
                                                              //height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P1'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: <Widget>[
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_3_1 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),





                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),//Time
                                                      SizedBox(height: 5,),




                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[
                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P2'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '$p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_3_1 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),
                                                          ],
                                                        ),),


                                                      SizedBox(height: 5,),



                                                      Container(
                                                        constraints: BoxConstraints(
                                                          maxWidth:
                                                          MediaQuery.of(context).size.width * 0.90,
                                                        ),
                                                        padding: EdgeInsets.all(10),
                                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(2),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                            ),
                                                          ],
                                                        ),



                                                        child:  Column(
                                                          children: <Widget>[


                                                            Container(
                                                              //  height: 110,
                                                              //width: screenWidth * 0.22,
                                                              color:  Colors.white,
                                                              child:Row(  mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                                                                    alignment: Alignment.topLeft,
                                                                    decoration: BoxDecoration(
                                                                      shape: BoxShape.circle,
                                                                      boxShadow: [],
                                                                    ),
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors.white,
                                                                      radius: 20,
                                                                      child: Text('P3'),
                                                                    ),
                                                                    //  width: 5,
                                                                  ),
                                                                  SizedBox(height: 10,  width: 5,
                                                                  ),

                                                                  Container(
                                                                    child: Column(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        SizedBox(width: 10,),
                                                                        Container(
                                                                          padding: EdgeInsets.only(left: 10, right: 0, top: 0),

                                                                          //  Padding(padding: EdgeInsets.only(left: 10,top: 5),) ,

                                                                          child:RichText(
                                                                            text: TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '  $p1 \n ',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 14,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),

                                                                                ),
                                                                                TextSpan(
                                                                                  text:
                                                                                  '$p2_3_1 \n',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 16,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),

                                                                                TextSpan(
                                                                                  text:
                                                                                  ' $p4',
                                                                                  style: TextStyle(

                                                                                    color: Color(0xff0A4B68),
                                                                                    fontSize: 10,
                                                                                    fontFamily:
                                                                                    GoogleFonts.barlow(fontWeight:FontWeight.w500,fontSize: 14).fontFamily,
                                                                                  ),
                                                                                ),



                                                                              ],
                                                                            ),
                                                                          ),




                                                                        ),],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),

                                                            ),  ],
                                                        ),),                                         //dash

                                                      //progess
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ],//bigbox
                                        ),
                                      ),
                                    ),

                                    //child: new Text("Toggle Me"),
                                    height: _animatedHeight4,
                                    //color: Colors.tealAccent,
                                    // width: 100.0,
                                  )
                                ],
                              ),
                            ),
                          ),

//SizedBox(height: 1,),






























































                        ],
                      ),














                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class value extends StatelessWidget {
  const value();
  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return Container(
      //margin: const EdgeInsets.symmetric(vertical: 20,),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //SizedBox(width: 15,),
            SizedBox(
              height: 25,
            ),
            //SizedBox(width: 25,),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Total Active",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //Center Row contents vertically,
                    children: [
                      const Align(
                        //alignment: Alignment.centerLeft,

                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        child:   Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child:Text(
                            "27",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0A4B68)),
                          ),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Align(
                          alignment: Alignment.centerRight,

                        ),

                      ],
                    ),
                  ),
                ],
              ),
              width: 150,
              //height: 150,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Total Tasks",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //Center Row contents vertically,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,

                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child:Text(
                            "30",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0A4B68)),
                          ),),
                      ),
                    ],
                  ),
                  SizedBox(
            
            
            
                    height: 15,
                  ),
                ],
              ),
              width: 150,
              //height: 150,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
