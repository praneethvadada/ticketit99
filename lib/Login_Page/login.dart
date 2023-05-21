import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../Signin_Page/signin.dart';

void main() {
  runApp(new Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// An indicator showing the currently selected page of a PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff0A4B68),
            ),
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  int _currentPage = 0;
  late Timer _timer;
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds:2), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 10),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
    final List<Widget> _pages = <Widget>[
    new ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Container(
          height: 8,
          child: Transform.scale(
            scale: 1,
            child: IconButton(
              onPressed: () {},
              icon: new Image.asset("assets/images/first.png"),
            ),
          ),
          // Image.asset(
          //   'assets/images/first.png',
          //
          // ),
        )),

      new ConstrainedBox(
        constraints: const BoxConstraints.expand(),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Container(
                child: Transform.scale(
                  scale: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: new Image.asset("assets/images/secondimage.png"),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 100,
            // ),
            Center(
              child: Text(
                "Manage & Monitor",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0A4B68),
                ),
              ),
            ),
            Text(
              "Projects,Teams and Tickets",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        )),
      new ConstrainedBox(
          constraints: const BoxConstraints.expand(),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.only(bottom: 130),
                child: Container(
                  child: Transform.scale(
                    scale: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: new Image.asset("assets/images/thirdimage.png"),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 100,
              // ),
              Center(
                child: Text(
                  "Report & Collaborate",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0A4B68),
                  ),
                ),
              ),
              Text(
                "Smoothly",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
  ];
  //"Report & Collaborate","Smoothly",
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        new IconTheme(
            data: new IconThemeData(color: _kArrowColor),
            child: new Stack(
              children: <Widget>[
                new PageView.builder(
                  physics: new AlwaysScrollableScrollPhysics(),
                  controller: _controller,
                  itemBuilder: (BuildContext context, int index) {
                    return _pages[index % _pages.length];
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Transform.scale(
                            scale: 1,
                            child: Image.asset('assets/images/Vector.png',
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                new Positioned(
                  bottom: 10.0,
                  left: 0.0,
                  right: 0.0,
                  child: Column(
                    children: [
                      new Container(
                        padding: const EdgeInsets.all(20.0),
                        child: new Center(
                          child: new DotsIndicator(
                            controller: _controller,
                            itemCount: _pages.length,
                            onPageSelected: (int page) {
                              _controller.animateToPage(
                                page,
                                duration: _kDuration,
                                curve: _kCurve,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 20),
                        child: Container(
                          child: SizedBox(
                              height: 33,
                              width: 35,
                              child: Container(
                                  constraints: BoxConstraints(
                                      //maxWidth: MediaQuery.of(context).size.width*0.1,
                                      ),
                                  padding: EdgeInsets.all(4),
                                  //margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xff0A4B68),
                                    //color: Color.fromARGB(255, 94, 164, 173),
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 20,
                                          child: IconButton(
                                            icon: const Icon(
                                                Icons.arrow_forward_ios),
                                            style: IconButton.styleFrom(
                                                backgroundColor: Colors.white),
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 3),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MyLogin()),
                                              );
                                            },
                                          ),
                                        ),
                                      ]))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0,bottom: 10),
                        child: Container(
                          child: Text("Powered by"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          child: Container(
                            child: Transform.scale(
                              scale: 1.2,
                              child:
                                Image.asset("assets/images/syngymaximlogo.png"),
                              ),
                            ),
                          ),
                      ),

                    ],
                  ),
                ),
              ],
            )));
  }
}
