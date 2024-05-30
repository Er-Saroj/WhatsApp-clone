// ignore_for_file: prefer_const_constructors

import 'package:first_app/widget/update_page/update_details.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class updates extends StatelessWidget {
  const updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.green[900],
          title: Text(
            "Updates",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            PopupMenuButton(
              iconColor: Colors.black,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontStyle: FontStyle.normal),
                          ))),
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Switch accounts",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontStyle: FontStyle.normal),
                          ))),
                ];
              },
              color: Colors.white,
            ),
          ],
        ),
        body: updatedetails());
  }
}
