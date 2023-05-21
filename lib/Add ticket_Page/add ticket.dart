import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home_Pages/homepage.dart';
import '../Notification_Page/notification.dart';

class addticket extends StatelessWidget {
  const addticket({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Ticket',
      /* theme: ThemeData(
      fontFamily: 'mulish',
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 50.0,fontFamily: 'mulish',),
           headline1: TextStyle(fontSize: 15,fontFamily: 'mulish',),
        ),
      ),*/
      theme: ThemeData(
          fontFamily: GoogleFonts.mulish(fontSize:150,).fontFamily,
          primaryColor: Color(0xff0A4B68),
          textTheme: TextTheme(
            headline1: TextStyle(color:Color(0xfe333544),fontSize: 17,fontFamily:  GoogleFonts.mulish(fontSize:150,).fontFamily,),
            headline2: TextStyle(color:Color(0xfe333544),fontSize: 20,fontFamily:  GoogleFonts.mulish(fontSize:150,).fontFamily,),

          )
      ),

      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
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
  int currentIndex=0;



  String? gender;
  String dropdownvalue = 'Ticket Type';
  String dropdownvalue1 = 'Location';
  String dropdownvalue2 = 'Category';
  String dropdownvalue3 = 'Priority';

  var items = [	'Ticket Type',	'Item 1',	'Item 2',	'Item 3',	'Item 4',];
  var location=['Location','a','c','d',];
  var category=['Category','x','y','z',];
  var priority=['Priority','1','2','3',];

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



  final GlobalKey<FormState> _key=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
//backgroundColor: Colors.grey,
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
      //body: Container(child: Text("gggggggggggggg"),),
      body:Stack(
        children: [
          SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(height: 4,),

                Center(
                  child: Container(padding: EdgeInsets.fromLTRB(22, 0, 22, 0),
                    child: Form(
                      key:_key,
                      child:Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget> [
                          Padding(	padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),),

                          Container(padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                            child: Row(
                              children: [  SizedBox(height: 33, width: 35,
                                child: Container(

                                  //height: 30,
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


                                      SizedBox(height: 20,
                                        child: IconButton(
                                          icon: const Icon(Icons.arrow_back_ios_new_sharp),style: IconButton.styleFrom(backgroundColor: Colors.white),
                                          padding: EdgeInsets.fromLTRB(0, 0, 0,3),
                                          onPressed: ()
                                          {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Home()
                                              ),

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
                                SizedBox(width: 55,),
                                Text("Add Ticket",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black),
                                )
                              ],
                            ),
                          ),

                          //
                          SizedBox(height: 20,),
                          DropdownButtonFormField(
                            validator: (value) {
                              if(value=='Ticket Type' ){
                                return 'Select Ticket Type';

                              }
                              else null;
                            },

                            isDense: true,
                            isExpanded: true,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(left: 10,top: 20,right: 10),
                            ),
                            value: dropdownvalue,


                            dropdownColor:Colors.white,
                            icon: const Icon(Icons.arrow_drop_down),


                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items,style: Theme.of(context).textTheme.headline1,),
                              );
                            }).toList(),

                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                          DropdownButtonFormField(
                            isDense: true,
                            isExpanded: true,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(left: 10,right: 10,top: 20),
                            ),
                            value: dropdownvalue1,
                            icon: const Icon(Icons.arrow_drop_down),
                            items: location.map((String items1) {
                              return DropdownMenuItem(
                                value: items1,
                                child: Text(items1,style: Theme.of(context).textTheme.headline1,),
                              );
                            }).toList(),
                            onChanged: (String? newValue1) {
                              setState(() {
                                dropdownvalue1 = newValue1!;
                              });

                            },
                            validator: (value) {
                              if(dropdownvalue1=='Location'  )
                                return 'Select Location';

                              else null;
                            },
                          ),


                          DropdownButtonFormField(
                            validator: (value) {
                              if(value=='Category' ){
                                return 'Select Category';

                              }
                              else null;
                            },

                            isDense: true,
                            isExpanded: true,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(left: 10,right: 10,top: 20),
                            ),



                            value: dropdownvalue2,


                            icon: const Icon(Icons.arrow_drop_down),


                            items: category.map((String items2) {
                              return DropdownMenuItem(
                                value: items2,
                                child: Text(items2,style: Theme.of(context).textTheme.headline1,),
                              );
                            }).toList(),

                            onChanged: (String? newValue2) {
                              setState(() {
                                dropdownvalue2 = newValue2!;
                              });
                            },
                          ),

                          DropdownButtonFormField(

                            isDense: true,
                            isExpanded: true,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(left: 10, top: 20,right: 10),
                            ),
                            value: dropdownvalue3,
                            icon: const Icon(Icons.arrow_drop_down),
                            items: priority.map((String items3) {
                              return DropdownMenuItem(
                                value: items3,
                                child: Text(items3,style: Theme.of(context).textTheme.headline1,),
                              );
                            }).toList(),
                            onChanged: (String? newValue3) {
                              setState(() {
                                dropdownvalue3 = newValue3!;
                              });
                            },
                            validator: (value) {
                              if(value=='Priority' ){
                                return 'Select Priority';

                              }
                              else null;
                            },

                          ),

                          TextFormField(
                            // maxLengthEnforcement: false,
                            style:Theme.of(context).textTheme.headline1,


                            // keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(

                              //  border: OutlineInputBorder(),
                              contentPadding:
                              EdgeInsets.only(left: 10,right: 10,top: 20),
                              hintText: 'Employee ID',
                              hintStyle: Theme.of(context).textTheme.headline1,

                            ),
                            validator: (value) {

                              if(value==null || value.isEmpty )
                                return 'Add Employee ID';


                              return null;
                            },
                          ),
                          //SizedBox(height: 3,),//SizedBox(height: 30,),
                          TextFormField(
                              keyboardType: TextInputType.phone,
                              style:Theme.of(context).textTheme.headline2,
                              decoration: InputDecoration(

                                contentPadding:
                                EdgeInsets.only(left: 10,right: 10,top: 20),
                                hintText: 'Mobile Number',
                                hintStyle:Theme.of(context).textTheme.headline1,
                              ),
                              validator: (value) {
                                if(value==null || value.isEmpty ){

                                  return 'Add Mobile Number';



                                }
                                return null;
                              }

                          ),
                          //SizedBox(height: 3,),//SizedBox(height: 30,),
                          TextFormField(
                              style:Theme.of(context).textTheme.headline2,
                              decoration: InputDecoration(

                                contentPadding:
                                EdgeInsets.only(left: 10, right: 10,top: 20),
                                hintText: 'Problem Title',

                                hintStyle: Theme.of(context).textTheme.headline1,

                              ),
                              validator: (value) {
                                if(value==null || value.isEmpty ){

                                  return 'Add Problem Title';

                                }
                                return null;
                              }
                          ),
                          //SizedBox(height: 3,),
                          TextFormField(
                              style:Theme.of(context).textTheme.headline2,
                              decoration: InputDecoration(errorStyle: TextStyle(height: 0),

                                contentPadding:
                                EdgeInsets.only(left: 10,right: 10,top: 20),
                                hintText: 'Availability',

                                hintStyle: Theme.of(context).textTheme.headline1,

                              ),
                              validator: (value) {
                                if(value==null || value.isEmpty ){
                                  return 'Add Availabulity';

                                }
                                return null;
                              }
                          ),


                          SizedBox(height: 8,),


                          Padding(padding:
                          EdgeInsets.only(left: 10, bottom: 2,right: 15),
                            child:Text('Description:',style: Theme.of(context).textTheme.headline1,),
                          ),
                          SizedBox(height: 10,),
                          Padding(padding:
                          EdgeInsets.only(left: 10, bottom: 15,right: 10),
                            child: TextFormField(
                              style:Theme.of(context).textTheme.headline1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                contentPadding:
                                EdgeInsets.only(left: 10, bottom: 15,right: 2),
                              ),
                              maxLines:6,

                            ),),






                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[
                              //Text(' '),


                              SizedBox(
                                width: 100,
                                child: ElevatedButton(

                                  child:const Text('Select File'),
                                  onPressed:(){},
                                  style: ElevatedButton.styleFrom(
                                    primary:Color(0xff0A4B68),
                                  ),
                                ),
                              ),

                              //Text('                  '),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                  child:const Text('submit'),
                                  onPressed:(){
                                    if(_key.currentState!.validate()){
                                      print("Form submitted.");                                 }

                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary:Color(0xff0A4B68),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
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
          child:
          SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Filter tickets"
                        ,style: TextStyle(
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
                        onPressed: ()
                        {
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
                          onPressed: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => mybutton()),
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
                  AssetImage(
                      "assets/images/1.png"),
                  color: Color(0xff0A4B68),
                  size: 24,
                )
                    : ImageIcon(
                  AssetImage(
                      "assets/images/2.png"),
                  color: Color(0xff0A4B68),
                  size: 24,
                )),
            title: Container(child: Text(results[index])),
          );
        });
  }
}

