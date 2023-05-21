import 'dart:ui';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Chart_message/chat massage.dart';
import '../Department Admins_page/department admin.dart';
import '../Home_Pages/homepage.dart';

class ChatDetailPage extends StatefulWidget {
  final a4;

  const ChatDetailPage({super.key, required this.a4});

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  TextEditingController chatText = new TextEditingController();
  final ScrollController _controller = ScrollController();

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

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0),
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
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 33,
                        width: 35,
                        child: Container(
                          constraints: BoxConstraints(
                            //maxWidth: MediaQuery.of(context).size.width*0.1,
                          ),
                          padding: EdgeInsets.all(4),
                          //margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            //color: Color.fromARGB(255, 94, 164, 173),
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                                child: IconButton(
                                  icon:
                                  const Icon(Icons.arrow_back_ios_new_sharp),
                                  style: IconButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage()),
                                    );
                                  },
                                ),
                              ),
                              // Text('$usermsg',),
                              //Text('$time3',textAlign: TextAlign.right,),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),

                      Text(
                        widget.a4,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfe333544),
                          fontFamily: GoogleFonts.mulish().fontFamily,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),

      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            controller: _controller,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 120),
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey.shade200
                          : Color(0xff0A4B68)),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff0A4B68),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => filter()),
                          // );

                          setState(() {
                            showWidget = !showWidget;
                          });
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: chatText,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        messages.add(ChatMessage(messageContent: chatText.text.toString(), messageType: "sender"));
                        chatText.text = '';
                      });
                      _scrollDown();
                    },
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Color(0xff0A4B68),
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
          showWidget ? popUp() : Container(),
       //   showWidget ? buildSticker() : Container(),
        ],
      ),
    );
  }
  void _scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
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
  // Widget buildSticker() {
  //   return Padding(
  //     padding: const EdgeInsets.fromLTRB(20, 180, 20, 180),
  //     child: Container(
  //       child: EmojiPicker(
  //         onEmojiSelected: (category, emoji) {
  //           // Do something when emoji is tapped
  //         },
  //         onBackspacePressed: () {
  //           // Backspace-Button tapped logic
  //           // Remove this line to also remove the button in the UI
  //         },
  //         // config: Config(
  //         //     columns: 7,
  //         //     verticalSpacing: 0,
  //         //     horizontalSpacing: 0,
  //         //     initCategory: Category.RECENT,
  //         //     bgColor: Color(0xff0A4B68),
  //         //     indicatorColor:Color(0xff0A4B68),
  //         //     iconColor: Colors.grey,
  //         //     iconColorSelected:Color(0xff0A4B68),
  //         //     //  progressIndicatorColor: Colors.blue,
  //         //     showRecentsTab: true,
  //         //     recentsLimit: 8,
  //         //     tabIndicatorAnimDuration: kTabScrollDuration,
  //         //     categoryIcons: const CategoryIcons(),
  //         //     buttonMode: ButtonMode.MATERIAL),
  //       ),
  //     ),
  //   );
  // }
}
