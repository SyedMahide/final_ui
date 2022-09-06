import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:final_ui/ui/lifeStyle_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            HomeScreen(),
            LifeStyleScreen(),
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.black,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            // activeColor: Color(0xff4048BF),
            title: Text('Home'),
            icon: Icon(Icons.home),
            //Image.asset("assets/home.png"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Offers'),
            icon: Icon(Icons.apps),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Explore'),
            icon: Icon(Icons.near_me),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Meetings'),
            icon: Icon(Icons.chat_bubble),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
