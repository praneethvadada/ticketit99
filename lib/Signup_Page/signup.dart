import 'package:flutter/material.dart';
import '../Signin_Page/signin.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<FormState> _key=GlobalKey<FormState>();
class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);
  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(


        child: Form( key:_key,
          child: Stack(

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  padding: EdgeInsets.only(left: 0, top: 50),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Center(child: Text('Welcome to',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:  Color(0xff0A4B68),),)),


                        Image.asset('assets/images/applogo.png',
                            color: Color.fromARGB(255, 73, 59, 59), height: 50, fit: BoxFit.cover),


                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                              style: TextStyle(color: Color(0xff0A4B68)),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff0A4B68),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),

                                  hintText: " Your full name",
                                  hintStyle: TextStyle(color: Color(0xfe333544),
                                    fontSize: 16,
                                    fontFamily:
                                    GoogleFonts.mulish().fontFamily,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              validator: (value) {
                                if(value==null || value.isEmpty ){

                                  return 'Enter your name';



                                }
                                return null;
                              }
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          TextFormField(
                              style: TextStyle(color: Color(0xff0A4B68)),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff0A4B68),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),

                                  hintText: " Your email",
                                  hintStyle: TextStyle(color: Color(0xfe333544),
                                    fontSize: 16,
                                    fontFamily:
                                    GoogleFonts.mulish().fontFamily,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              validator: (value) {
                                if(value==null || value.isEmpty ){

                                  return 'Enter Your email';



                                }
                                return null;
                              }
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(

                              style: TextStyle(
                                color: Color(0xff0A4B68),
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff0A4B68),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),

                                  hintText: " Password",
                                  hintStyle: TextStyle(color: Color(0xfe333544),
                                    fontSize: 16,
                                    fontFamily:
                                    GoogleFonts.mulish().fontFamily,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              validator: (value) {
                                if(value==null || value.isEmpty ){

                                  return 'Enter Password';
                                }
                                return null;
                              }
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                              scrollPadding: EdgeInsets.only(bottom:170),
                              style: TextStyle(
                                color: Color(0xff0A4B68),
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xff0A4B68),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),

                                  hintText: " Confirm password",
                                  hintStyle: TextStyle(color: Color(0xfe333544),
                                    fontSize: 16,
                                    fontFamily:
                                    GoogleFonts.mulish().fontFamily,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              validator: (value) {
                                if(value==null || value.isEmpty ){
                                  return 'Enter Password';
                                }
                                return null;
                              }
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text(
                                'I Accept the terms & Conditions',
                                // textAlign: TextAlign.left,
                                style: TextStyle(color: Color(0xfe333544),
                                  fontSize: 12,
                                  fontFamily:
                                  GoogleFonts.mulish().fontFamily,),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,width: 66,
                          ),
                          OutlinedButton(
                            onPressed: () {

                              if(_key.currentState!.validate()){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => MyLogin()),
                                );
                              }
                            },
                            child: Text('Sign Up'),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Color(0xff0A4B68),
                              ),
                              primary: Colors.black,
                              minimumSize: Size(450, 55),
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8)),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
