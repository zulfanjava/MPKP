import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homePage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }

}

class _MainState extends State<MainPage> {
  int _currentIndex = 0; // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HALAMAN ADMIN"),
        centerTitle: true,
        backgroundColor: Colors.teal, // Change this line
      ),
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex, // Add this line
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "UTAMA"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "TEMPAHAN"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "KELULUSAN"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "LEBIHAN"), // Change this line
        ]
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget(){
    return(_currentIndex==0)? HomePage():Container();
  }
}
  