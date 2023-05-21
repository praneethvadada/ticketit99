import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';
import 'dart:async';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:english_words/english_words.dart';
import '../Home_Pages/homepage.dart';

void main() => runApp(Search());

class Search extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title = 'My Home Page'}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _testList = [
    'Test Item 1',
    'Test Item 2',
    'Test Item 3',
    'Test Item 4',
  ];

  TextEditingController myController = TextEditingController();
  TextEditingController myController2 = TextEditingController();
  TextEditingController myController3 = TextEditingController();
  TextEditingController myController4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
    myController2.addListener(_printLatestValue);
    myController3.addListener(_printLatestValue);
    myController4.addListener(_printLatestValue);
  }

  _printLatestValue() {
    print("text field: ${myController.text}");
    print("text field: ${myController2.text}");
    print("text field: ${myController3.text}");
    print("text field: ${myController4.text}");
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    myController4.dispose();
    super.dispose();
  }

  // mocking a future
  Future<List> fetchSimpleData() async {
    await Future.delayed(Duration(milliseconds: 2000));
    List _list = <dynamic>[];
    // create a list from the text input of three items
    // to mock a list of items from an http call
    _list.add('Test' + ' Item 1');
    _list.add('Test' + ' Item 2');
    _list.add('Test' + ' Item 3');
    return _list;
  }

  // mocking a future that returns List of Objects
  Future<List> fetchComplexData() async {
    await Future.delayed(Duration(milliseconds: 1000));
    List _list = <dynamic>[];
    List _jsonList = [
      {'label': 'Text' + ' Item 1', 'value': 30},
      {'label': 'Text' + ' Item 2', 'value': 31},
      {'label': 'Text' + ' Item 3', 'value': 32},
    ];
    // create a list from the text input of three items
    // to mock a list of items from an http call where
    // the label is what is seen in the textfield and something like an
    // ID is the selected value
    _list.add(new TestItem.fromJson(_jsonList[0]));
    _list.add(new TestItem.fromJson(_jsonList[1]));
    _list.add(new TestItem.fromJson(_jsonList[2]));

    return _list;
  }


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
                    setState(() {
                   //   showWidget = !showWidget;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {

                    Navigator.pop(context,true);
                    // Navigator.pop(context,true);

                    // Navigator.pushNamed(context, '/Home');

                    // Navigator.of(context).pop();
                    // Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Home()));


                    // Navigator.push(

                    //   context,
                    //   MaterialPageRoute(builder: (context) => Search()),
                    // );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16),
              TextFieldSearch(
                  label: 'Search Company',
                  controller: myController2,
                  future: () {
                    return fetchSimpleData();
                  }),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Tickets",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                  ),
                  Container(
                    child: Text("Projects",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                  ),
                  Container(
                    child:  Text("People",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                  ),
                  Container(
                    child:  Text("Teams",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                  ),
                  Container(
                    child:  Text("Tags",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                  ),
                  Container(
                    child: Text("Messages",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                  ),
                ],

              ),
          Divider(
          thickness: 1,
          color: Colors.black38 ,),
              Padding(
                padding: const EdgeInsets.only(left: 0,top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:   CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Quick filter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0,top: 20),
                      child: Row(
                        children: [
                          Container(
                              child:  Icon(
                                PhosphorIcons.user,
                                size: 32.0,
                               )
                            ),

                          Container(
                            child:  Text(
                              "Tickets assigned to....",style: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black38 ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0,top: 20),
                child: Row(
                  children: [
                    Container(
                      child:  Icon(
                        PhosphorIcons.users,
                        size: 32.0,
                      )
                    ),

                    Container(
                      child:  Text(
                        "Tickets with collaborators...",style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38 ,),
              Padding(
                padding: const EdgeInsets.only(left: 0,top: 20),
                child: Row(
                  children: [
                    Container(
                      child:  Icon(
                        Icons.calendar_month,
                        color: Colors.black54,
                        size: 30.0,
                      ),
                    ),

                    Container(
                      child:  Text(
                        "Tickets in projects....",style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38 ,),


              Padding(
                padding: const EdgeInsets.only(left: 0,top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:   CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Shortcuts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0,top: 20),
                      child: Row(
                        children: [
                          Container(
                            child:  Icon(
                              PhosphorIcons.spinner,
                              size: 32.0,
                            )
                          ),

                          Container(
                            child:  Text(
                              "Tickets i've created....",style: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black38 ,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0,top: 20),
                child: Row(
                  children: [
                    Container(
                      child:  Icon(
                        PhosphorIcons.check,
                        size: 32.0,
                      )
                    ),

                    Container(
                      child:  Text(
                        "Recently completed tickets...",style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38 ,),
              Padding(
                padding: const EdgeInsets.only(left: 0,top: 20),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        PhosphorIcons.user,
                        size: 32.0,
                      )
                    ),

                    Container(
                      child:  Text(
                        "Tickets i've assigned to others....",style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black38 ,),

            ],
          ),
        ),
      ),
    );
  }
}

// Mock Test Item Class
class TestItem {
  final String label;
  dynamic value;

  TestItem({required this.label, this.value});

  factory TestItem.fromJson(Map<String, dynamic> json) {
    return TestItem(label: json['label'], value: json['value']);
  }
}
