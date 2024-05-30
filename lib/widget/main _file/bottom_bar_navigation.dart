// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:first_app/widget/Community/community.dart';
import 'package:first_app/widget/call_detailspage/call_detail.dart';
import 'package:first_app/widget/home_screen.dart/home.dart';
import 'package:first_app/widget/update_page/update.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndexvalue = 0;
  List ScreenList = [
    const HomeScreen(),
    const updates(),
    const community(),
    const calldetails()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          backgroundColor: Colors.amber,
          unselectedItemColor: Colors.black87,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(color: Colors.black),
          useLegacyColorScheme: true,
          onTap: (index) {
            setState(() {
              currentIndexvalue = index;
            });
          },
          currentIndex: currentIndexvalue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                size: 30,
              ),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              //backgroundColor: Colors.black,
              icon: Icon(
                Icons.update_outlined,
                size: 30,
              ),
              label: "Updates",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people_alt_outlined,
                size: 30,
              ),
              label: "Communities",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                size: 30,
              ),
              label: "Calls",
            ),
          ],
        ),
        body: ScreenList[currentIndexvalue]);
  }
}
