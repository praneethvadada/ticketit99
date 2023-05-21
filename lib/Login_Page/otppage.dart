import 'package:example/Login_Page/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

final GlobalKey<FormState> _key=GlobalKey<FormState>();

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  bool isChecked = false;

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
                            height: 25,
                          ),


                          Center(
                            child: OTPTextField(
                                controller: otpController,
                                length: 4,
                                width: MediaQuery.of(context).size.width,
                                textFieldAlignment: MainAxisAlignment.spaceAround,
                                fieldWidth: 45,
                                fieldStyle: FieldStyle.box,
                                outlineBorderRadius: 25,
                                style: TextStyle(fontSize: 17),
                                onChanged: (pin) {
                                  print("Changed: " + pin);
                                },
                                onCompleted: (pin) {
                                  print("Completed: " + pin);
                                }),
                          ),
                          SizedBox(height: 15,),

                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: new Text('If you didnt rececive a code. Resend', style: TextStyle(color: Colors.black),),
                          ),
                          SizedBox(
                            height: 15,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                              onPressed: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => newpassword()),
                                );
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

                          Padding(
                            padding: const EdgeInsets.only(top: 150,bottom: 10),
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


// import 'package:flutter/material.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
//
//
// //import 'package:google_fonts/google_fonts.dart';
//
//
// class hhh extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       home: otpp(title: 'OTP Field'),
//     );
//   }
// }
//
// class otpp extends StatefulWidget {
//   otpp({Key? key, this.title}) : super(key: key);
//   final String? title;
//
//   @override
//   _otppState createState() => _otppState();
// }
//
// class _otppState extends State<otpp> {
//   OtpFieldController otpController = OtpFieldController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//
//
//           backgroundColor: Colors.white,
//           body: SingleChildScrollView(
//
//
//             child: Form(
//               child: Stack(
//
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 50),
//                     child: Container(
//                       padding: EdgeInsets.only(left: 0, top: 50),
//                       child: Align(
//                         alignment: Alignment.topCenter,
//                         child: Column(
//                           children: [
//                             Center(child: Text('Welcome to',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:  Color(0xff0A4B68),),)),
//
//
//                             Image.asset('assets/images/applogo.png',
//                                 color: Color.fromARGB(255, 73, 59, 59), height: 50, fit: BoxFit.cover),
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(
//                         top: MediaQuery.of(context).size.height * 0.28),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(left: 35, right: 35),
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 25,
//                               ),
//
//
//                               Center(
//                                 child: OTPTextField(
//                                     controller: otpController,
//                                     length: 4,
//                                     width: MediaQuery.of(context).size.width,
//                                     textFieldAlignment: MainAxisAlignment.spaceAround,
//                                     fieldWidth: 45,
//                                     fieldStyle: FieldStyle.box,
//                                     outlineBorderRadius: 25,
//                                     style: TextStyle(fontSize: 17),
//                                     onChanged: (pin) {
//                                       print("Changed: " + pin);
//                                     },
//                                     onCompleted: (pin) {
//                                       print("Completed: " + pin);
//                                     }),
//                               ),
//                               SizedBox(
//                                 height: 25,
//                               ),
//                               TextButton(
//                                 //onPressed: () => Navigator.of(context).pop(true),
//                                 onPressed: (){},
//                                 child: new Text('If you didnt receive the code Resend', style: TextStyle(color: Colors.black),),
//
//                               ),
//                               SizedBox(
//                                 height: 25,
//                               ),
//
//
//
//
//
//                               Container(
//                                 width: MediaQuery.of(context).size.width * 0.9,
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(builder: (context) => hhh()),
//                                     );
//                                   },
//                                   style: ElevatedButton.styleFrom(
//                                     primary: Color(0xff0A4B68),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     elevation: 5.0,
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Text(
//                                       'Send',
//                                       style: TextStyle(fontSize: 20),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//
//
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//
//     );
//   }
// }

