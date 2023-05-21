import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class TICKETSBODY extends StatefulWidget {
  @override
  State<TICKETSBODY> createState() => _TICKETSBODYState();
}

class _TICKETSBODYState extends State<TICKETSBODY> {
  get tid => "#3597231";
  get text1 => "Lack of toner";
  get text2 => "Jewry St, Winchester";


  double _animatedHeight = 110.0;
  double _animatedHeight2 = 220.0;
  double _animatedHeight3 = 220.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //fontFamily: GoogleFonts.mulish(fontSize:150,).fontFamily,
          primaryColor: Color(0xff0A4B68),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Color(0xfe333544),
              fontFamily: GoogleFonts.mulish().fontFamily,
            ),
            bodyText1: TextStyle(
              color: Color(0xfe333544),
              fontFamily: GoogleFonts.mulish(
                fontSize: 15,
              ).fontFamily,
            ),
          )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(

          child: Column(
            children: <Widget>[
              IntrinsicHeight(
                  //wrap Row with this, otherwise, vertical divider will not display
                  child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWsdqnzqZ4qk8bcpCzlIWUYEllazUT4OuOw&usqp=CAU'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("My Ticket",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: GoogleFonts.mulish(
                            fontSize: 15,
                          ).fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0A4B68),
                        )),
                  )
                ],
              )),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child:SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              color: Colors.lightBlueAccent,
                              child: SizedBox(
                                child: Row(children: [
                                  Container(
                                    child: Icon(
                                      Icons.check_circle,
                                      color:Color(0xff0A4B68),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.lightBlueAccent,
                                    child: Center(
                                      child: Text(
                                        'Incompleted tickets',
                                        style: TextStyle(color: Color(0xff0A4B68),),
                                      ), //Text
                                    ), //Center
                                  ),
                                ]),
                              ))
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.signal_cellular_alt,
                              color: Colors.black54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'None',
                                  style: TextStyle(color: Colors.black54),
                                ), //Text
                              ), //Center
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              color: Colors.lightBlueAccent,
                              child: SizedBox(
                                child: Row(children: [
                                  Container(
                                    child: Icon(
                                      Icons.check_circle,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Container(
                                    color: Colors.lightBlueAccent,
                                    child: Center(
                                      child: Text(
                                        'Fields',
                                        style: TextStyle(color: Color(0xff0A4B68)),
                                      ), //Text
                                    ), //Center
                                  ),
                                ]),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10,bottom: 10),
                child: Container(
                  height: 30,
                  child: Row(children: <Widget>[
                    Container(
                      child: Text(
                        "Ticket Name",
                        style: TextStyle(
                            color: Colors.black54 ,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => setState(() {
                        _animatedHeight != 0.0
                            ? _animatedHeight = 0.0
                            : _animatedHeight = 110.0;
                      }),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),

                        //margin: const EdgeInsets.all(2.0),


                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Recently Assigned",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(
                                  color: Color(0xff0A4B68),
                                  PhosphorIcons.map_pin_fill,
                                  size: 27,
                                  //color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ), //today

                    // AnimatedContainer(
                    //   duration: const Duration(milliseconds: 3),
                    //   child: Column(
                    //     children: <Widget>[
                    //       Container(
                    //           color: Colors.white,
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Container(
                    //                 height: 110,
                    //                 //width: screenWidth * 0.22,
                    //                 color: Colors.white,
                    //                 child: Padding(
                    //                   padding:
                    //                       EdgeInsets.fromLTRB(10, 23, 0, 0),
                    //                   child: Text(
                    //                     '03:30 PM  ',
                    //                     textAlign: TextAlign.center,
                    //                     style: TextStyle(
                    //                         fontSize: 13, color: Colors.grey),
                    //                   ),
                    //                 ),
                    //               ), //Time
                    //
                    //               SizedBox(
                    //                 child: Container(
                    //                   color: Colors.white,
                    //                   height: 110,
                    //                   child: Column(
                    //                     children: <Widget>[
                    //                       Dash(
                    //                         direction: Axis.vertical,
                    //                         length: 20,
                    //                         dashLength: 3,
                    //                         dashColor: Color(0xff0A4B68),
                    //                         dashThickness: 2,
                    //                         dashGap: 3,
                    //                       ),
                    //                       Container(
                    //                         child: Icon(
                    //                           PhosphorIcons.radio_button_fill,
                    //                           size: 20.0,
                    //                           color: Color(0xff0A4B68),
                    //                         ),
                    //                       ),
                    //                       Dash(
                    //                         direction: Axis.vertical,
                    //                         length: 70,
                    //                         dashLength: 3,
                    //                         dashColor: Color(0xff0A4B68),
                    //                         dashThickness: 2,
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ), //dash
                    //
                    //               Container(
                    //                 height: 110,
                    //                 color: Colors.white,
                    //                 child: Column(
                    //                   children: [
                    //                     Container(
                    //                       padding: const EdgeInsets.fromLTRB(
                    //                           0, 20, 0, 0),
                    //                       child: RichText(
                    //                         text: TextSpan(
                    //                           text: "$tid",
                    //                           style: TextStyle(
                    //                             height: 0,
                    //                             fontSize: 13,
                    //                             color: Color(0xff0A4B68),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       height: 10,
                    //                     ),
                    //                     Container(
                    //                       //padding: const EdgeInsets.fromLTRB(0,0,150,0),
                    //                       child: RichText(
                    //                         text: TextSpan(
                    //                           text: "$text1 ",
                    //                           style: TextStyle(
                    //                               height: 0,
                    //                               fontSize: 13,
                    //                               color: Colors.black),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                       height: 20,
                    //                     ),
                    //                     Container(
                    //                       padding: const EdgeInsets.fromLTRB(
                    //                           0, 0, 0, 0),
                    //                       child: RichText(
                    //                         text: TextSpan(
                    //                           text: "$text2 ",
                    //                           style: TextStyle(
                    //                               height: 0,
                    //                               fontSize: 11,
                    //                               color: Colors.grey),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ), //richtext
                    //
                    //               SizedBox(
                    //                 child: Container(
                    //                   height: 110,
                    //                   //width: screenWidth * 0.28,
                    //                   color: Colors.white,
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.fromLTRB(
                    //                         0, 20, 0, 0),
                    //                     child: Column(
                    //                       children: [
                    //                         RichText(
                    //                           text: TextSpan(
                    //                             text: "Medium",
                    //                             style: TextStyle(
                    //                                 height: 0,
                    //                                 fontSize: 13,
                    //                                 color: Colors.orangeAccent),
                    //                           ),
                    //                         ),
                    //                         Padding(
                    //                           padding:
                    //                               const EdgeInsets.fromLTRB(
                    //                                   0, 5, 0, 10),
                    //                           child: Icon(
                    //                             PhosphorIcons.phone,
                    //                             size: 30.0,
                    //                             color: Color(0xff0A4B68),
                    //                           ),
                    //                         ),
                    //                         RichText(
                    //                           text: TextSpan(
                    //                             text: "In progress",
                    //                             style: TextStyle(
                    //                                 height: 0,
                    //                                 fontSize: 12,
                    //                                 color: Colors.orangeAccent),
                    //                           ),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ) //progess
                    //             ],
                    //           )),
                    //     ], //bigbox
                    //   ),
                    //
                    //   //child: new Text("Toggle Me"),
                    //   height: _animatedHeight,
                    //   //color: Colors.tealAccent,
                    //   // width: 100.0,
                    // )

                    AnimatedContainer(
                      duration: const Duration(milliseconds: 3),
                      child: Column(
                        children: <Widget>[
                          Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 110,
                                    //width: screenWidth * 0.22,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(10, 23, 0, 0),
                                      child: Text(
                                        '03:30 PM  ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.grey),
                                      ),
                                    ),
                                  ), //Time

                                  SizedBox(
                                    child: Container(
                                      color: Colors.white,
                                      height: 110,
                                      child: Column(
                                        children: <Widget>[
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 20,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                            dashGap: 3,
                                          ),
                                          Container(
                                            child: Icon(
                                              PhosphorIcons.radio_button_fill,
                                              size: 20.0,
                                              color: Color(0xff0A4B68),
                                            ),
                                          ),
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 70,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //dash

                                  Container(
                                    height: 110,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 20, 0, 0),
                                          child: RichText(
                                            text: TextSpan(
                                              text: "$tid",
                                              style: TextStyle(
                                                height: 0,
                                                fontSize: 13,
                                                color: Color(0xff0A4B68),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          //padding: const EdgeInsets.fromLTRB(0,0,150,0),
                                          child: RichText(
                                            text: TextSpan(
                                              text: "$text1 ",
                                              style: TextStyle(
                                                  height: 0,
                                                  fontSize: 13,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 0),
                                          child: RichText(
                                            text: TextSpan(
                                              text: "$text2 ",
                                              style: TextStyle(
                                                  height: 0,
                                                  fontSize: 11,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), //richtext

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.28,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                        child: Column(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: "Medium",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.orangeAccent),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.fromLTRB(
                                                  0, 5, 0, 10),
                                              child: Icon(
                                                PhosphorIcons.phone,
                                                size: 30.0,
                                                color: Color(0xff0A4B68),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: "In progress",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 12,
                                                    color: Colors.orangeAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ) //progess
                                ],
                              )),

                        ], //bigbox
                      ),

                      //child: new Text("Toggle Me"),
                      height: _animatedHeight,
                      //color: Colors.tealAccent,
                      // width: 100.0,
                    )


                  ],
                ),
              ),

              GestureDetector(
                onTap: () => setState(() {
                  //_animatedHeight2!=0.0?_animatedHeight2=0.0:_animatedHeight2=110.0;
                }),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),

                  //margin: const EdgeInsets.all(2.0),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Due to day",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Icon(
                            color: Color(0xff0A4B68),
                            PhosphorIcons.map_pin_fill,
                            size: 27,
                            //color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ), //today
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => setState(() {
                        _animatedHeight2 != 0.0
                            ? _animatedHeight2 = 0.0
                            : _animatedHeight2 = 220.0;
                      }),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Due Next Week",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(
                                  color: Color(0xff0A4B68),
                                  PhosphorIcons.map_pin_fill,
                                  size: 27,
                                  //color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ), //today

                    AnimatedContainer(
                      duration: const Duration(milliseconds: 5),
                      child: Column(
                        children: <Widget>[
                          Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 110,
                                    //width: screenWidth * 0.22,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 23, 0, 40),
                                      child: Text(
                                        '03:30 PM  ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.grey),
                                      ),
                                    ),
                                  ), //Time

                                  SizedBox(
                                    child: Container(
                                      color: Colors.white,
                                      height: 110,
                                      child: Column(
                                        children: <Widget>[
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 20,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                            dashGap: 3,
                                          ),
                                          Container(
                                            child: Icon(
                                              PhosphorIcons.radio_button_fill,
                                              size: 20.0,
                                              color: Color(0xff0A4B68),
                                            ),
                                          ),
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 70,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //dash

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.4,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 20, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$tid",
                                                style: TextStyle(
                                                  height: 0,
                                                  fontSize: 13,
                                                  color: Color(0xff0A4B68),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text1 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text2 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 11,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //richtext

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.28,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                        child: Column(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: "Low",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.green),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 5, 0, 10),
                                              child: Icon(
                                                PhosphorIcons.phone,
                                                size: 30.0,
                                                color: Color(0xff0A4B68),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: "In progress",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 12,
                                                    color: Colors.orangeAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ) //progess
                                ],
                              )),
                          Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 110,
                                    //width: screenWidth * 0.22,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 23, 0, 40),
                                      child: Text(
                                        '03:30 PM  ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.grey),
                                      ),
                                    ),
                                  ), //Time

                                  SizedBox(
                                    child: Container(
                                      color: Colors.white,
                                      height: 110,
                                      child: Column(
                                        children: <Widget>[
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 20,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                            dashGap: 3,
                                          ),
                                          Container(
                                            child: Icon(
                                              PhosphorIcons.radio_button_fill,
                                              size: 20.0,
                                              color: Color(0xff0A4B68),
                                            ),
                                          ),
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 70,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //dash

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.4,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 20, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$tid",
                                                style: TextStyle(
                                                  height: 0,
                                                  fontSize: 13,
                                                  color: Color(0xff0A4B68),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text1 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text2 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 11,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //richtext

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.28,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                        child: Column(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: "Low",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.green),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 5, 0, 10),
                                              child: Icon(
                                                PhosphorIcons.phone,
                                                size: 30.0,
                                                color: Color(0xff0A4B68),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: "In progress",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 12,
                                                    color: Colors.orangeAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ) //progess
                                ],
                              )),
                        ], //bigbox
                      ),

                      //child: new Text("Toggle Me"),
                      height: _animatedHeight2,
                      //color: Colors.tealAccent,
                      // width: 100.0,
                    )
                  ],
                ),
              ),

              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => setState(() {
                        _animatedHeight3 != 0.0
                            ? _animatedHeight3 = 0.0
                            : _animatedHeight3 = 220.0;
                      }),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Due Later",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 40),
                                child: Icon(
                                  color: Color(0xff0A4B68),
                                  PhosphorIcons.map_pin_fill,
                                  size: 27,
                                  //color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ), //today

                    AnimatedContainer(
                      duration: const Duration(milliseconds: 5),
                      child: Column(
                        children: <Widget>[
                          Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 110,
                                    //width: screenWidth * 0.22,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 23, 0, 40),
                                      child: Text(
                                        '03:30 PM  ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.grey),
                                      ),
                                    ),
                                  ), //Time

                                  SizedBox(
                                    child: Container(
                                      color: Colors.white,
                                      height: 110,
                                      child: Column(
                                        children: <Widget>[
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 20,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                            dashGap: 3,
                                          ),
                                          Container(
                                            child: Icon(
                                              PhosphorIcons.radio_button_fill,
                                              size: 20.0,
                                              color: Color(0xff0A4B68),
                                            ),
                                          ),
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 70,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //dash

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.4,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 20, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$tid",
                                                style: TextStyle(
                                                  height: 0,
                                                  fontSize: 13,
                                                  color: Color(0xff0A4B68),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text1 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text2 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 11,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //richtext

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.28,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                        child: Column(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: "Low",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.green),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 5, 0, 10),
                                              child: Icon(
                                                PhosphorIcons.phone,
                                                size: 30.0,
                                                color: Color(0xff0A4B68),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: "In progress",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 12,
                                                    color: Colors.orangeAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ) //progess
                                ],
                              )),
                          Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 110,
                                    //width: screenWidth * 0.22,
                                    color: Colors.white,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 23, 0, 40),
                                      child: Text(
                                        '03:30 PM  ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.grey),
                                      ),
                                    ),
                                  ), //Time

                                  SizedBox(
                                    child: Container(
                                      color: Colors.white,
                                      height: 110,
                                      child: Column(
                                        children: <Widget>[
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 20,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                            dashGap: 3,
                                          ),
                                          Container(
                                            child: Icon(
                                              PhosphorIcons.radio_button_fill,
                                              size: 20.0,
                                              color: Color(0xff0A4B68),
                                            ),
                                          ),
                                          Dash(
                                            direction: Axis.vertical,
                                            length: 70,
                                            dashLength: 3,
                                            dashColor: Color(0xff0A4B68),
                                            dashThickness: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //dash

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.4,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 20, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$tid",
                                                style: TextStyle(
                                                  height: 0,
                                                  fontSize: 13,
                                                  color: Color(0xff0A4B68),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text1 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 50, 0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "$text2 ",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 11,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), //richtext

                                  SizedBox(
                                    child: Container(
                                      height: 110,
                                      //width: screenWidth * 0.28,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                        child: Column(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: "Low",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 13,
                                                    color: Colors.green),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 5, 0, 10),
                                              child: Icon(
                                                PhosphorIcons.phone,
                                                size: 30.0,
                                                color: Color(0xff0A4B68),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: "In progress",
                                                style: TextStyle(
                                                    height: 0,
                                                    fontSize: 12,
                                                    color: Colors.orangeAccent),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ) //progess
                                ],
                              )),
                        ], //bigbox
                      ),

                      //child: new Text("Toggle Me"),
                      height: _animatedHeight3,
                      //color: Colors.tealAccent,
                      // width: 100.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
