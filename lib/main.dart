// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:first_app/widget/main%20_file/bottom_bar_navigation.dart';
import 'package:first_app/widget/main%20_file/contact/provider_contact.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBarScreen(),
    );
  }
}
