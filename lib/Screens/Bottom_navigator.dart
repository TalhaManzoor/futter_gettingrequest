import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gettingrequest/Screens/Explore_screen.dart';

import 'Profile_Screen.dart';

class Bottom_navigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Explore'),
          ),

        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Profile_screen(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Explore_screen(),
              );
            });

          default: return CupertinoTabView(builder: (context) {
            return CupertinoPageScaffold(
              backgroundColor: Color(0xFF6979f8),
              child: Profile_screen(),
            );
          });
        }
      },
    );
  }
}

