import 'package:example/Login_Page/forgot_password.dart';
import 'package:flutter/material.dart';
import '../Login_Page/login.dart';
import '../Routes/routes.dart';
import '../Signup_Page/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

final GlobalKey<FormState> _key=GlobalKey<FormState>();
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin>with SingleTickerProviderStateMixin {
  bool _isVisible = false;

  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller=AnimationController(
      duration: Duration(seconds:1),
     vsync: this
    );

controller.forward();
controller.addListener(() {
  setState(() {

  });
  print(controller.value);
});
  }
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            }),
          ),
//centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key:_key,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 0, top: 30),

                  child: Column(  
                    children: [

                      Center(child: Text('Welcome to',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:  Color(0xff0A4B68),),)),

                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Image.asset('assets/images/applogo.png',
                            color: Color.fromARGB(255, 73, 59, 59), height:50, fit: BoxFit.cover),
                      ),


                    ],
                  ),

                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextFormField(
                              //style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    fillColor: Color.fromARGB(255, 231, 226, 226),
                                    filled: true,
                                    hintText: "Your Email",
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

                                    return 'Enter Email';



                                  }
                                  return null;
                                }

                            ),
                            SizedBox(
                              height: 10,
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
                                    hintText: "Password",
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
                              height: 10,
                            ),
                            SizedBox(width: 330,height: 45,
                              child: OutlinedButton(
                                onPressed: () {
                                  if(_key.currentState!.validate()){




                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>MyApp1()),
                                    );
                                  }},
                                child: Text('Sign In'),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Color(0xff0A4B68),
                                  ),
                                  primary: Colors.black,
                                  minimumSize: Size(150, 45),
                                  padding: EdgeInsets.symmetric(vertical:8),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  ),
                                ),
                              ),
                            ),



                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Color(0xff0A4B68), //The color to use when this checkbox is checked.

                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Remember me',
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(color: Color(0xfe333544),
                                    fontSize: 12,
                                    fontFamily:
                                    GoogleFonts.mulish().fontFamily,),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 60,height: 25,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyRegister()),
                                      );
                                    },
                                    child: Text('Sign Up'),
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                        color: Colors.blueAccent,
                                      ),
                                      primary: Colors.black,
                                      // minimumSize: Size(150, 45),
                                      padding: EdgeInsets.symmetric(vertical: 2),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(3)),
                                      ),
                                    ),
                                  ),
                                ),


                                SizedBox(width: 120,height: 25,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => forgotpassword()),
                                      );
                                    },
                                    child: Text('Forgot  Password'),
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                        color:Color.fromARGB(255, 255, 99, 99),
                                      ),
                                      primary: Colors.black,
                                      // minimumSize: Size(150, 45),
                                      padding: EdgeInsets.symmetric(vertical: 2),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(3)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
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
      ),
    );
  }
}

