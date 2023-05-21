import 'package:example/Routes/routes.dart';
import 'package:flutter/material.dart';
import 'Login_Page/login.dart';

Future<void> main() async {
//  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLogged = false;
//  if (isLoggedIn != null) {
//     isLogged = isLoggedIn;
//    SharedPref.registerIntercomUser();
  // }
  final MyApp myApp = MyApp(
    initialRoute: isLogged ? '/home' : '/login',
  );

  runApp(myApp);
}
class MyApp extends StatelessWidget {
  final String initialRoute;

  MyApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    print(initialRoute);
    return MaterialApp(
      title: 'Supplier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: initialRoute,
      routes: {
        '/login': (context) => Login(),
        '/home': (context) =>  MyApp1(),
      },
    );
  }
}
