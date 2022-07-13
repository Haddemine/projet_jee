import 'package:flutter/material.dart';
import 'package:inscrire/moduls/Hom/hom.dart';
import 'package:inscrire/moduls/profile/profile.dart';
import 'package:inscrire/moduls/settings/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> screens = [
    hom(),
    profile(),
    settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Liscence',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
        elevation: 0,
      ),
      body: screens[currentIndex],

        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            backgroundColor:  Colors.cyan,
            currentIndex: currentIndex,
            onTap: (index){
             setState(() {
               currentIndex = index;
             });
            },
            items:
            [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff226e79),
                  ),
                label: 'Home',

              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Color(0xff226e79),
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Color(0xff226e79),
                ),
                label: 'Settings',
              ),
            ]
        ),
    );
  }
}
