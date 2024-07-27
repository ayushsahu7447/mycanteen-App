import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycanteen/login/screen/login.dart';

class BottomNavPaitents extends StatefulWidget {
  const BottomNavPaitents({super.key});
  static String id = 'BottomNav';

  @override
  State<BottomNavPaitents> createState() => _BottomNavPaitentsState();
}

class _BottomNavPaitentsState extends State<BottomNavPaitents> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    login(),
    login(),
    login(),
    login(),
    // HomeScreenPaitent(),
    // AppointmentScreen(),
    // AppointmentInfo(),
    // ArticlesScreen(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedLabelStyle: TextStyle(
          color: Colors.red,
          //fontFamily: 'Urbanist',
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey[700],
          //fontFamily: 'Urbanist',
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        selectedFontSize: 13,
        unselectedFontSize: 12,
        selectedIconTheme: IconThemeData(
          color: Colors.red,
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey[700],
          size: 30,
        ),
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
              size: 20,
            ),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.fileWaveform,
              size: 20,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.newspaper,
              size: 20,
            ),
            label: "Articles",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.userAlt,
              size: 20,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}