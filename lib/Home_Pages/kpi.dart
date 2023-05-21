import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'graph1.dart';
import 'package:google_fonts/google_fonts.dart';
class KPIBODY extends StatelessWidget {
  const KPIBODY({Key? key}) : super(key: key);
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

      appBar:PreferredSize (preferredSize: Size.fromHeight(120.0),

        child: Column(
          children: [SizedBox(height: 50,
            child: Container(color: Color(0xff0A4B68) ,),
          ),
            AppBar(


              //toolbarHeight: 80,
              backgroundColor: Color(0xff0A4B68),
              centerTitle: true,
              title: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/applogo.png', fit: BoxFit.cover)),

              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.filter_alt_outlined),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => filter()),
                    // );


                    setState(() {
                  //    showWidget = !showWidget;
                    });

                  },
                ),

                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () {},
                ),
              ],
            ),],),),
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
                    Container(
                      height: 225,
                      width: 340,
                      child: Graph1(),
                    ),
                    Container(
                      height: 225,
                      width: 340,
                      child: Graph1(),
                    ),
                    Container(
                      height: 225,
                      width: 340,
                      child: Graph1(),
                    ),
                    Container(
                      height: 225,
                      width: 340,
                      child: Graph1(),
                    ),
                    Container(
                      height: 225,
                      width: 340,
                      child: Graph1(),
                    ),
                    Container(
                      height: 225,
                      width: 340,
                      child: Graph1(),
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
                      "Montly Closed Ticket",
                      style: TextStyle(fontSize: 12,fontFamily: GoogleFonts.mulish().fontFamily,),
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
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          PhosphorIcons.arrow_up_right_bold,
                          size: 40,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          "27",
                          style: TextStyle(
                              fontFamily: GoogleFonts.mulish().fontFamily,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0A4B68)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            PhosphorIcons.arrow_up_right_bold,
                            size: 15,
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          child: Text(
                            "67%",
                            style: TextStyle(
                                fontFamily: GoogleFonts.mulish().fontFamily,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0A4B68)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              width: 150,
              height: 150,
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
                      "Yearly In-Service Rate",
                      style: TextStyle(fontSize: 12,fontFamily: GoogleFonts.mulish().fontFamily,),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //Center Row contents vertically,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          PhosphorIcons.arrow_down_right_bold,
                          size: 40,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        child: Text(
                          "27.77%",
                          style: TextStyle(fontFamily: GoogleFonts.mulish().fontFamily,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0A4B68)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              width: 150,
              height: 150,
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
