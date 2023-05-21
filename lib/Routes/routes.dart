import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../Add ticket_Page/add ticket2.dart';
import '../Chats_Page/chats.dart';
import '../Home_Pages/homepage.dart';
import '../Home_Pages/tickets.dart';
import '../Profile_Page/profile.dart';
import '../Search/search.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';




void main() {
  runApp(MyApp1());
}
class MyApp1 extends StatefulWidget {


  @override
  _MyApp1State createState() => _MyApp1State();
}


class _MyApp1State extends State<MyApp1> {
  var _currentIndex = 0;
  final _pageController = PageController();

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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        drawer: const NavigationDrawer(),
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
                      setState(() {
                        showWidget = !showWidget;
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: ()
                    {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Search()),
                      );
                    },
                  ),
                ],
              ),



            ],
          ),
        ),
        body:Stack(
          children: [
            PageView(
              controller: _pageController,
              children: [
                Container(child:Home()),
                Container(child:TICKETSBODY()),
                Container(child:BottomScreen()),
                Container(child:Chats()),
                Container(child:Profilepage()),
                // Container(child:Search())
              ],
              onPageChanged: (index) {
                // Use a better state management solution
                // setState is used for simplicity
                setState(() => _currentIndex = index);
              },
            ),
            showWidget ? popUp() : Container(),
          ],
        ),



        // floatingActionButton: SizedBox(
        //   height:100,
        //   width:100,
        //   child:FloatingActionButton(
        //     child: Icon(Icons.add), //child widget inside this button
        //     shape: BeveledRectangleBorder(
        //         borderRadius: BorderRadius.zero
        //     ),
        //     onPressed: (){
        //       print("Button is pressed.");
        //       //task to execute when this button is pressed
        //     },
        //   ),
        // ),

        floatingActionButton: Container(

          alignment: Alignment.center,

          child:FloatingActionButton(
            hoverElevation: 50,

            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            child:  IconButton(
              icon: Icon(
                PhosphorIcons.plus_bold,
                size: 30.0,
                color: Color(0xff0A4B68),
              ),
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
              onPressed: (){} //=> Navigator.of(context).pop(true),
            ),
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(4),
            ),
            onPressed: (){
              print("Button is pressed.");
            },
          ),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.95),
                offset: Offset(-9.0, -9.0),
                blurRadius: 25.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                offset: Offset(9.0, 9.0),
                blurRadius: 25.0,
              ),
            ],
            color: Color(0xFFEFEEEE),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor: Colors.blue[100], //background color of scaffold

        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            _pageController.jumpToPage(index);
            setState(() => _currentIndex= index);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Color(0xff0A4B68),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.check_circle,),
              title: Text("My Tickets"),
              selectedColor: Color(0xff0A4B68),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.add_circle),
              title: Text("Add"),
              selectedColor: Color(0xff0A4B68),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.chat_rounded),
              title: Text("Chats"),
              selectedColor: Color(0xff0A4B68),
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Color(0xff0A4B68),
            ),
          ],
        ),
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
                      child: Text("Filter tickets",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
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
                          //   MaterialPageRoute(builder: (context) => MyApp1()),
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
                            //   MaterialPageRoute(
                            //       builder: (context) =>MyApp1()),
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

