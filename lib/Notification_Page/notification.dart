import 'package:example/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Home_Pages/homepage.dart';

void main() {
  runApp(MaterialApp(
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
    home: mybutton(),
    debugShowCheckedModeBanner: false,
  ));
}

DateTime date = DateTime.now();
String cdate =
    "${date.day}-${date.month}-${date.year}  ${date.hour}:${date.minute}";

class mybutton extends StatefulWidget {
  @override
  mybuttonState createState() {
    return mybuttonState();
  }
}

class mybuttonState extends State<mybutton> {
  final _formKey = GlobalKey<FormState>();
  String? gender;
  int counter = 0;
  int currentIndex = 0;

  List num = [
    'ASEDM1586',
    'ASEDM1587',
    'ASEDM1588',
    'ASEDM1589',
    'ASEDM1590',
  ];
  var tid = 'Ticket Id: ';
  var cdt = 'Date of Closing: ';
  //DateTime cdate=DateTime.now();
  //var date =new DateTime(cdate.year);
//var cdate1="${date.hour};
  var adate = '23-09-2022';
  var x = 1;
  var assign = "Assigned to";
  var agent = [
    '2055',
    '2056',
    '2057',
    '2058',
    '2059',
  ];
  var ag = "Agent by";
  var adm = [
    "20580 Admin",
    "20581 Admin",
    "20582 Admin",
    "20583 Admin",
    "20584 Admin",
  ];
  var i = 0;
  var j = 0;
  var bottomNavigationBar;
  String dropdownvalue = 'Ticket Type';
  String dropdownvalue1 = 'Location';
  String dropdownvalue2 = 'Category';
  String dropdownvalue3 = 'Priority';
  var items = [
    'Ticket Type',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];
  var location = [
    'Location',
    'a',
    'c',
    'd',
  ];
  var category = [
    'Category',
    'x',
    'y',
    'z',
  ];
  var priority = [
    'Priority',
    '1',
    '2',
    '3',
  ];

  var status = [false, false, false, false, false, false, false, false];

  var results = [
    'Cancelled',
    'Closed',
    'Completed',
    'Material requested',
    'On hold',
    'Open',
    'Assigned',
    'Un-Assigned'
  ];
  bool showWidget = false;

  //get screens => bottomNavigationBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Container(
                color: Color(0xff0A4B68),
              ),
            ),
            AppBar(
              //toolbarHeight: 80,
              backgroundColor: Color(0xff0A4B68),
              centerTitle: true,
              title: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/applogo.png',
                      fit: BoxFit.cover)),

              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.filter_alt_outlined),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => filter()),
                    // );

                    setState(() {
                      showWidget = !showWidget;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Center(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(300, 2, 100, 2),
                          ),
                          // Text('$tid $num \n $cdt $cdate \n $adate'),
                          Container(
                            child: Row(
                              children: [
                                // SizedBox(
                                //   height: 33,
                                //   width: 35,
                                //   child: Container(
                                //     constraints: BoxConstraints(
                                //         //maxWidth: MediaQuery.of(context).size.width*0.1,
                                //         ),
                                //     padding: EdgeInsets.all(4),
                                //     //margin: EdgeInsets.symmetric(vertical: 10),
                                //     decoration: BoxDecoration(
                                //       color: Colors.white,
                                //       //color: Color.fromARGB(255, 94, 164, 173),
                                //       borderRadius: BorderRadius.circular(9),
                                //       boxShadow: [
                                //         BoxShadow(
                                //           color: Colors.grey.withOpacity(0.5),
                                //           spreadRadius: 2,
                                //           blurRadius: 5,
                                //         ),
                                //       ],
                                //     ),
                                //     child: Column(
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.end,
                                //       children: <Widget>[
                                //         SizedBox(
                                //           height: 20,
                                //           child: IconButton(
                                //             icon: const Icon(
                                //                 Icons.arrow_back_ios_new_sharp),
                                //             style: IconButton.styleFrom(
                                //                 backgroundColor: Colors.white),
                                //             padding:
                                //                 EdgeInsets.fromLTRB(0, 0, 0, 3),
                                //             onPressed: () {
                                //               Navigator.push(
                                //                 context,
                                //                 MaterialPageRoute(
                                //                     builder: (context) =>
                                //                         MyApp1()),
                                //               );
                                //             },
                                //           ),
                                //         ),
                                //         // Text('$usermsg',),
                                //         //Text('$time3',textAlign: TextAlign.right,),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(Icons.arrow_back_ios_new_sharp),
                                      style: IconButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                      onPressed: () => Navigator.of(context).pop(true),
                                    ),
                                    width: 46,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 0.0),
                                          blurRadius: 10,
                                        ),
                                        BoxShadow(
                                            color: Colors.white
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 55,
                                ),
                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(children: [
                              SizedBox(
                                height: 15,
                              ),
                              //Text('\n\n'),
                              for (i = 0; i < 5; i++) ...[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(30, 8, 30, 0),
                                      child: Text(
                                        '$tid ',
                                        style: TextStyle(
                                          height: 2,
                                          color: Color(0xfe333544),
                                          fontSize: 16,
                                          fontFamily:
                                              GoogleFonts.mulish().fontFamily,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                      child: Text(
                                        '${num[i]}',
                                        style: TextStyle(
                                          height: 2,
                                          color: Color(0xff0A4B68),
                                          fontSize: 16,
                                          fontFamily:
                                              GoogleFonts.mulish().fontFamily,
                                        ),
                                      ),
                                    ),
                                    // recognizer:TapGestureRecognizer()..onTap=(() {
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(30, 0, 30, 0),
                                      child: Text(
                                        '$cdt $cdate\n$adate',
                                        style: TextStyle(
                                          height: 2,
                                          color: Color(0xfe333544),
                                          fontSize: 14,
                                          fontFamily:
                                              GoogleFonts.mulish().fontFamily,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Color(0xfe333544),
                                  height: 5,
                                  thickness: 0,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                for (j = 0; j < 5; j++) ...[
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 8, 30, 0),
                                        child: Text(
                                          '$tid ',
                                          style: TextStyle(
                                            height: 2,
                                            color: Color(0xfe333544),
                                            fontSize: 16,
                                            fontFamily:
                                                GoogleFonts.mulish().fontFamily,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 8, 0, 0),
                                        child: Text(
                                          '${num[j]}',
                                          style: TextStyle(
                                            height: 2,
                                            color: Color(0xff0A4B68),
                                            fontSize: 16,
                                            fontFamily:
                                                GoogleFonts.mulish().fontFamily,
                                          ),
                                        ),
                                      ),
                                      //recognizer:TapGestureRecognizer()..onTap=(() {
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(30, 0, 30, 0),
                                        child: Text(
                                          '$assign ${agent[j]} $ag ${adm[j]} \n$adate',
                                          style: TextStyle(
                                            height: 2,
                                            color: Color(0xfe333544),
                                            fontSize: 14,
                                            fontFamily:
                                                GoogleFonts.mulish().fontFamily,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Color(0xfe333544),
                                    height: 5,
                                    thickness: 0,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                ],
                              ],
                            ]),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          showWidget ? popUp() : Container(),
        ],
      ),

    );
  }

  popUp() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 0, 20, 65),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Filter tickets",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1,
                  color: Colors.black54,
                ),
                list(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff0A4B68),
                        ),
                        child: Text('Cancel')),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff0A4B68),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mybutton()),
                            );
                          },
                          child: Text('Filter')),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  list() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: results.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: GestureDetector(
                onTap: () {
                  status = [
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                  ];
                  print(index);
                  setState(() {
                    status[index] = true;
                  });
                  status[index] = true;
                },
                child: status[index] == true
                    ? const ImageIcon(
                        AssetImage("assets/images/1.png"),
                        color: Color(0xff0A4B68),
                        size: 24,
                      )
                    : ImageIcon(
                        AssetImage("assets/images/2.png"),
                        color: Color(0xff0A4B68),
                        size: 24,
                      )),
            title: Container(child: Text(results[index])),
          );
        });
  }
}
