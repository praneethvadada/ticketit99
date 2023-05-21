import 'package:example/Home_Pages/projects.dart';
import 'package:example/Home_Pages/teams.dart';
import 'package:example/Home_Pages/tickets.dart';
import 'package:example/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Login_Page/login.dart';
import '../Notification_Page/notification.dart';
import 'kpi.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.mulish(
            fontSize: 150,
          ).fontFamily,
          primaryColor: Color(0xff0A4B68),
          textTheme: TextTheme(
            headline1: TextStyle(
              color: Color(0xfe333544),
              fontSize: 17,
              fontFamily: GoogleFonts.mulish(
                fontSize: 150,
              ).fontFamily,
            ),
            headline2: TextStyle(
              color: Color(0xfe333544),
              fontSize: 20,
              fontFamily: GoogleFonts.mulish(
                fontSize: 150,
              ).fontFamily,
            ),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  String? gender;
  int currentIndex = 0;

  String dropdownvalue = 'Ticket Type';
  String dropdownvalue1 = 'Location';
  String dropdownvalue2 = 'Category';
  String dropdownvalue3 = 'Priority';
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(0.0)),
                    child: const TabBar(
                      indicatorColor: Color(0xff0A4B68),

                      indicatorPadding: EdgeInsets.symmetric(horizontal:10),
                      labelColor: Color(0xff0A4B68),

                      unselectedLabelColor: Color(0xff0A4B68),
                      tabs: [
                        Tab(
                          child: Text(
                            "Tickets",
                            style:
                            TextStyle(fontFamily: "mulish", fontSize: 18),


                          ),
                        ),
                        Tab(
                          child: Text(
                            "Projects",
                            style:
                            TextStyle(fontFamily: "mulish", fontSize: 18),
                          ),
                        ),

                        Tab(
                          child: Text(
                            "Teams",
                            style:
                            TextStyle(fontFamily: "mulish", fontSize: 18),
                          ),
                        ),
                      ],

                    ),
              ),
                  Padding (
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      height: 1,
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                        children: [
                          Center(
                            child: TICKETSBODY(),
                          ),
                          Center(
                            child: Projects(),
                          ),
                          Center(
                            child:Teams(),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            showWidget ? popUp() : Container(),
          ],
        ),
        drawer: const NavigationDrawer(),
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
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Home()),
                          // );
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Home()),
                            // );
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

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(20.0)),
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.70,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ));

  Widget buildHeader(BuildContext context) => Material(
    child: Column(
      children: [
        SizedBox(
          height: 1,
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),

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
        ),


        Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 120,
                          height: 120,
                          child: ClipOval(
                            //child: Image.asset("Assets/Images/music_default.png",
                            child: Image.network(
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Container(
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Name',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ), //Text
                ),
              ),
            ],
          ),
        ),

      ],

    ),

  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.only(top: 15),
    child: Wrap(
      runSpacing: 0,
      children: [
        Theme(
            data: ThemeData(
              highlightColor: Color(0xff0A4B68),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: const Icon(Icons.home,
                  color: Color(0xff0A4B68),),
                title: const Text("Home",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp1()),
                  );
                },
              ),
            )),
        Theme(
            data: ThemeData(
              highlightColor: Color(0xff0A4B68),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: const Icon(Icons.notifications_on,
                  color: Color(0xff0A4B68),),
                title: const Text(
                  "Notifications",
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mybutton()),
                //    tileColor: Colors.blue,
                  );
                },
              ),
            )),
        Theme(
            data: ThemeData(
              highlightColor: Color(0xff0A4B68),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: const Icon(Icons.speaker_phone,
                  color: Color(0xff0A4B68),),
                title: const Text("KPI",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400)),
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KPIBODY()),
                  );
                },
              ),
            )),
        Theme(
          data: ThemeData(
            highlightColor: Color(0xff0A4B68),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: const Icon(Icons.logout_outlined,
                color: Color(0xff0A4B68),),
              title: const Text("Logout",
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login()),
                );
              },
            ),
          ),
        ),
            SizedBox(height: 150,),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child:  Center(child: Text("Powered By",style: TextStyle(color: Colors.black,fontSize: 15),)),),
                  Container(child:Image.asset('assets/images/syngymaximlogo.png',height: 50,),
                  )  ],
              ),
            ),
  ],
    ),
  );
}