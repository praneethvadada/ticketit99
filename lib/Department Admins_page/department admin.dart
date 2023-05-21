import 'package:flutter/material.dart';

import '../Chat_Users/chart user.dart';
import '../Chats_Page/chats.dart';
import '../Conversional_List/conversionalList.dart';
import '../Home_Pages/homepage.dart';


class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  get chatUsers => [
    ChatUsers(name: "Jane Russel", secondaryText: "Awesome Setup", imageURL: "images/userImage1.jpeg", time: "Now", messageText: '', ),
    ChatUsers(name: "Glady's Murphy", secondaryText: "That's Great", imageURL: "images/userImage2.jpeg", time: "Yesterday", messageText: '', ),
    ChatUsers(name: "Jorge Henry", secondaryText: "Hey where are you?", imageURL: "images/userImage3.jpeg", time: "31 Mar", messageText: '', ),
    ChatUsers(name: "Philip Fox", secondaryText: "Busy! Call me in 20 mins", imageURL: "images/userImage4.jpeg", time: "28 Mar", messageText: '', ),
    ChatUsers(name: "Debra Hawkins", secondaryText: "Thankyou, It's awesome", imageURL: "images/userImage5.jpeg", time: "23 Mar", messageText: '', ),
    ChatUsers(name: "Jacob Pena", secondaryText: "will update you in evening",imageURL: "images/userImage6.jpeg", time: "17 Mar", messageText: '', ),
    ChatUsers(name: "Andrey Jones", secondaryText: "Can you please share the file?", imageURL: "images/userImage7.jpeg", time: "24 Feb", messageText: '',),
    ChatUsers(name: "John Wick", secondaryText: "How are you?", imageURL: "images/userImage8.jpeg", time: "18 Feb", messageText: '', ),
  ];

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
    return  Scaffold(
      drawer: const NavigationDrawer(),

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
                      showWidget = !showWidget;
                    });

                  },
                ),

                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () {},
                ),
              ],
            ),],),),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          // SizedBox(height: 33, width: 35,
                          //   child: Container(
                          //     constraints: BoxConstraints(
                          //       //maxWidth: MediaQuery.of(context).size.width*0.1,
                          //     ),
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
                          //       crossAxisAlignment: CrossAxisAlignment.end,
                          //       children: <Widget>[
                          //         SizedBox(height: 20,
                          //           child: IconButton(
                          //             icon: const Icon(Icons.arrow_back_ios_new_sharp),style: IconButton.styleFrom(backgroundColor: Colors.white),
                          //             padding: EdgeInsets.fromLTRB(0, 0, 0,3),
                          //             onPressed: ()
                          //             {
                          //               // Navigator.push(
                          //               //   context,
                          //               //   MaterialPageRoute(builder: (context) => Chats()
                          //               //   ),
                          //               //
                          //               // );
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

                          SizedBox(width: 35,),
                          Text("Department Admins",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),
                          )
                        ],
                      ),
                    ),

                  )
                ),
                ListView.builder(
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return ConversationList(
                      name: chatUsers[index].name,
                      messageText: chatUsers[index].messageText,
                      imageUrl: chatUsers[index].imageURL,
                      time: chatUsers[index].time,
                      isMessageRead: (index == 0 || index == 3)?true:false,
                    );
                  },
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => mybutton()),
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