import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips_app/pages/home.dart';
import 'package:trips_app/pages/profile.dart';

// Handles bottom navigation behavior
class TripsPages extends StatelessWidget {
  final List<Widget> pages = [Home(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            activeColor: Colors.indigo,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile")
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) => pages[index],
            );
          }),
    );
  }
}
