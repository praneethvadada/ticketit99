import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:flutter/services.dart';

final GlobalKey<FormState> _key=GlobalKey<FormState>();

class newpassword extends StatefulWidget {
  const newpassword({Key? key}) : super(key: key);

  @override
  State<newpassword> createState() => _newpasswordState();
}

class _newpasswordState extends State<newpassword> {
  bool isChecked = false;
  bool _isVisible = false;

  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    OtpFieldController otpController = OtpFieldController();

    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(


        child: Form( key:_key,
          child: Stack(

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 25),

                child: Container(
                  alignment: Alignment.center,

                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_sharp),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.white),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-6.0, -6.0),
                        blurRadius: 16.0,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 16.0,
                      ),
                    ],
                    color: Color(0xFFEFEEEE),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),

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





                          SizedBox(
                            height: 15,
                          ),

                          TextFormField(
                              keyboardType: TextInputType.text,

                              obscureText: _isVisible ? false : true,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                              ],
                              scrollPadding: EdgeInsets.only(bottom:150),
                              //style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () => updateStatus(),
                                    icon:
                                    Icon(_isVisible ? Icons.visibility : Icons.visibility_off, color: Color(0xff0A4B68),),
                                  ),
                                  fillColor: Color.fromARGB(255, 231, 226, 226),
                                  filled: true,
                                  hintText: "Enter New Password",
                                  hintStyle: TextStyle(color: Color(0xfe333544),
                                    fontSize: 16,
                                    fontFamily:
                                    GoogleFonts.mulish().fontFamily,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
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
                              keyboardType: TextInputType.text,

                              obscureText: _isVisible ? false : true,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s"))
                              ],
                              scrollPadding: EdgeInsets.only(bottom:150),
                              //style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () => updateStatus(),
                                    icon:
                                    Icon(_isVisible ? Icons.visibility : Icons.visibility_off, color: Color(0xff0A4B68),),
                                  ),
                                  fillColor: Color.fromARGB(255, 231, 226, 226),
                                  filled: true,
                                  hintText: "Confirm Password",
                                  hintStyle: TextStyle(color: Color(0xfe333544),
                                    fontSize: 16,
                                    fontFamily:
                                    GoogleFonts.mulish().fontFamily,),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
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

                          SizedBox(
                            height: 25,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => newpassword()),
                                // );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff0A4B68),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5.0,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'Send',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),



                        ],
                      ),
                    )
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 600,bottom: 10),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child:  Center(child: Text("Powered By",style: TextStyle(color: Colors.black,fontSize: 15),)),),
                    Container(child:    Image.asset('assets/images/syngymaximlogo.png',height: 50,)
                      ,
                    )  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
