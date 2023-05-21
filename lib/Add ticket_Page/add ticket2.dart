import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BottomScreen());

class BottomScreen extends StatelessWidget {
  final List<IconData> icons = const [
    Icons.message,
    Icons.call,
    Icons.mail,
    Icons.notifications,
    Icons.settings,
  ];

  const BottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: DraggableBottomSheet(

            minExtent: 180,
            useSafeArea: false,
            curve: Curves.easeIn,
            previewWidget: _previewWidget(),
            expandedWidget: _expandedWidget(),
            backgroundWidget: _backgroundWidget(),
            maxExtent: MediaQuery.of(context).size.height * 0.8,
            onDragging: (pos) {},
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black54,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.black54,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.photo,
                  color: Colors.black54,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.link,
                  color: Colors.black54,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_add_sharp,
                  color: Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_add_sharp,
                  color: Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add_sharp, color: Colors.black54),
                label: '',
              ),
            ],
            //type: BottomNavigationBarType.shifting,
            //   currentIndex: _selectedIndex,
            //  selectedItemColor: Colors.black,
            //  iconSize: 40,
            //  onTap: _onItemTapped,
            //  elevation: 5
          ),
        );
      }),
    );
  }

  Widget _backgroundWidget() {
    return Scaffold(
      backgroundColor: Colors.black12,
    );
  }

  Widget _previewWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 40,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Drag Me',
            style: TextStyle(
              color: Colors.black12,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          Column(

            children: [

              Align(
                alignment: FractionalOffset.bottomCenter,
                child: new SingleChildScrollView(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                child: new SingleChildScrollView(
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,bottom:4),
                      child: Container(
                          child: Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: Colors.black54,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:5, left: 10),
                      child: Container(
                        child: Text(
                          'Private to you',
                          style: TextStyle(
                              fontSize: 15, color: Colors.black54),
                        ),
                      ),
                    ),
                  ],
                ),
          ),),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          child: new SingleChildScrollView(
            child: Row(
              children: [
                Container(
                    child: CircleAvatar(
                      radius: 18.0,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWsdqnzqZ4qk8bcpCzlIWUYEllazUT4OuOw&usqp=CAU'),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: new SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Ticket Name......',
                          style: TextStyle(
                              fontSize: 16, color: Colors.black54),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Sravan kumar@gmail.com',
                          style: TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                )],
            )),
      ),
      )] ),
              )
              ) ],
          ),
          const SizedBox(height: 16),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: icons.map((icon) {
                return Container();
              }).toList())
        ],
      ),
    );
  }

  Widget _expandedWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(children: <Widget>[
        const Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.black54),
        const SizedBox(height: 8),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: new SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                            child: Icon(
                          Icons.arrow_drop_down_circle_rounded,
                          color: Colors.black54,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: Container(
                          child: Text(
                            'Private to you',
                            style: TextStyle(
                                fontSize: 15, color: Colors.black54),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Container(
                    child: Text(
                      'Ticket Name......',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Container(
                      child: Row(
                    children: [
                      Container(
                          child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDWsdqnzqZ4qk8bcpCzlIWUYEllazUT4OuOw&usqp=CAU'),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Ticket Name......',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                child: Text(
                                  'Sravan kumar@gmail.com',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 10,top: 20),
                  child: Container(
                    child: Text(
                      '+  Add Project',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Text(
                      'Description',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Text(
                      '+  Add Subtask',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
              ],

            ),
          ),
        ),
        )]),
    );
  }
}
