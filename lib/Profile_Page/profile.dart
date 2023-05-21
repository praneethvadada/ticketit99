import 'package:flutter/material.dart';
import '../Chats_Page/chats.dart';
import '../Home_Pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Profilepage());
}

class Person implements Comparable<Person> {
  final String name, surname;
  final num age;

  const Person(this.name, this.surname, this.age);

  @override
  int compareTo(Person other) => name.compareTo(other.name);
}

class Profilepage extends StatelessWidget {
  Profilepage({super.key});
  String searchValue = '';
  static const people = [
    Person('Mike', 'Barron', 64),
    Person('Todd', 'Black', 30),
    Person('Ahmad', 'Edwards', 55),
    Person('Anthony', 'Johnson', 67),
    Person('Annette', 'Brooks', 39),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(
      //   primarySwatch: Colors.indigo,
      // ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  String? gender;
  int _counter = 0;
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Stack(
        children: <Widget>[
          ListView(children: <Widget>[


            Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
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
                                    icon: const Icon(
                                        Icons.arrow_back_ios_new_sharp),
                                    style: IconButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Chats()),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: CircleAvatar(
                  radius: 45.0,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWsdqnzqZ4qk8bcpCzlIWUYEllazUT4OuOw&usqp=CAU'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text('Sravan kumar',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: GoogleFonts.mulish(
                        fontSize: 15,
                      ).fontFamily,
                      color: Colors.black,
                    )),
              ),
            ),
            Center(child: Text("View Profile")),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/images/p1.png',
                              fit: BoxFit.cover,
                         ),
                        ),
                    Text("Inbox",style: TextStyle(fontSize:20),),],
                    ),
                    SizedBox(
                    ),
                        Row(

                          children: [
                            Icon(Icons.send, size: 20, ),
                          ],
                        ),
                  ],
                ),
                height: 40,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/images/p2.png',
                            fit: BoxFit.cover,
                           ),
                        ),
                        Text("My Team",style: TextStyle(fontSize:20),),],
                    ),
                    SizedBox(
                    ),
                    Row(

                      children: [
                        Icon(Icons.send, size: 20,),
                      ],
                    ),
                  ],
                ),
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/images/p3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Search Everywhere",style: TextStyle(fontSize:20),),],
                    ),
                    SizedBox(
                    ),
                    Row(

                      children: [
                        Icon(Icons.send, size: 20, ),
                      ],
                    ),
                  ],
                ),
                height: 40,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Settings",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
            ),
            Container(

              child: Row(
                  children: [
              Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('assets/images/p4.png',
                fit: BoxFit.cover,),
            ),
      Text("Account",style: TextStyle(fontSize:15),),
            ])
    ) ,
            Container(

                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset('assets/images/p5.png',
                          fit: BoxFit.cover,),
                      ),
                      Text("Notification Settings",style: TextStyle(fontSize:15),),
                    ])
            ),
            Container(
                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset('assets/images/p6.png',
                          fit: BoxFit.cover,),
                      ),
                      Text("Language",style: TextStyle(fontSize:15),),
                    ])
            ),
            Container(

                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child:Image.asset('assets/images/p7.png',
                          fit: BoxFit.cover,),
                      ),
                      Text("Privacy policy",style: TextStyle(fontSize:15),),
                    ])
            ),
            Container(

                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset('assets/images/p8.png',
                          fit: BoxFit.cover,),
                      ),
                      Text("Teams of service",style: TextStyle(fontSize:15),),
                    ])
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                   child:     Text("Support & Feedback",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                      ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 8),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(child:
                        Image.asset('assets/images/p9.png',
              ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text("Knowledge Base"),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(child:
                        Image.asset('assets/images/p10.png',
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text("Feedback"),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(child:
                        Image.asset('assets/images/p11.png',
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text("Rate This App"),),
                        )
                      ],
                    ),
                  ],
                ),
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 8),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(child:
                        Image.asset('assets/images/p12.png',
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text("Report a problem"),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(child:
                        Image.asset('assets/images/p13.png',
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text("Contact Sales"),),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(child:
                        Image.asset('assets/images/p14.png',
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text("Intro tutorial"),),
                        )
                      ],
                    ),
                  ],
                ),
                height: 100,
              ),
            ),
            Center(
              child: Container(child: Text("Log out from ticket it",
              style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),)
              ),

            ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(child: Text("Powered By",style: TextStyle(color: Colors.black,fontSize: 20),)),
          ),
            Image.asset('assets/images/syngymaximlogo.png',height: 50,)
          ]),
        ],
      ),
    );
  }
}
