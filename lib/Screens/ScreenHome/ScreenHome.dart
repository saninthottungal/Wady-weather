// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:wady/Screens/ScreenLobby/ScreenLobby.dart';
import 'package:wady/Screens/ScreenSaved/ScreenSaved.dart';
import 'package:wady/Screens/ScreenSearch/ScreenSearch.dart';
import 'package:wady/Screens/ScreenSettings/ScreenSettings.dart';
import 'package:wady/core/Constants.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int currentPage = 0;

  final pages = [
    const ScreenLobby(),
    const ScreenSearch(),
    const ScreenSaved(),
    const ScreenSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                // color: Colors.white,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
                // color: Colors.white,
                size: 25,
              ),
              label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_added_sharp),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,

        unselectedItemColor: Colors.white24,
        selectedItemColor: Colors.white,
        elevation: 100,
        //  selectedIconTheme: IconThemeData(fill: 20),

        currentIndex: currentPage,
        onTap: (newIndex) {
          // print(newIndex);
          setState(() {
            currentPage = newIndex;
          });
        },
      ),
    );
  }
}
