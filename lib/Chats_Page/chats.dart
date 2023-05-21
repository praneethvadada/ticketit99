import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Department Admins_page/department admin.dart';
import '../Department Agents_page/department agent.dart';
import '../Routes/routes.dart';



class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final _formKey = GlobalKey<FormState>();
  String? gender;
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
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(300, 25, 100, 2),
                      ),
                      // Text('$tid $num \n $cdt $cdate \n $adate'),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
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
                                "Chats",
                                style: TextStyle(fontSize: 20, fontFamily: GoogleFonts.mulish().fontFamily,fontWeight: FontWeight.w500,color: Colors.black)
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatPage()),
                          );
                        },
                        child:   Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ask Department Admin",
                                    style: TextStyle(
                                      height: 2,
                                      color: Color(0xfe333544),
                                      fontSize: 17,
                                      fontFamily: GoogleFonts.mulish().fontFamily,
                                    ),
                                  ),
                                ],
                              ),

                               Row(
                                children: [
                                  Icon(
                                    color: Colors.black,
                                    PhosphorIcons.paper_plane_right_fill,
                                    size: 15,
                                    //color: Colors.green,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 0,
                        thickness: 0,
                        indent: 10,
                        endIndent: 10,
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatPageAdmin()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ask Department Agents",
                                    style: TextStyle(
                                      height: 2,
                                      color: Color(0xfe333544),
                                      fontSize: 17,
                                      fontFamily: GoogleFonts.mulish().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Row(
                                children: [
                                  Icon (
                                    color: Colors.black,
                                    PhosphorIcons.paper_plane_right_fill,
                                    size: 15,
                                    //color: Colors.green,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Divider(
                        color: Colors.grey,
                        height: 0,
                        thickness: 0,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ],
                  )),
            ),
          ),
          showWidget ? popUp() : Container(),
        ],
      ),
      // drawer: const NavigationDrawer(),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>MyApp1()),
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
                                  builder: (context) => MyApp1()),
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