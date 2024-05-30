// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class community extends StatelessWidget {
  const community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.teal[700],
        title: Text(
          "Communities",
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
          PopupMenuButton(
            //splashRadius: 100,
            surfaceTintColor: Colors.white,
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
                          "Switch account",
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
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          SizedBox(
            width: 400,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Stay connnected with a",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
                ),
                Text(
                  "Community",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
                ),
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: 120, maxWidth: 320, minHeight: 105, minWidth: 25),
            child: Text(
                "   Communities bring membera together in           topic-based groups, and make it easy to get admin annoucements. any community you're                                      added to will appear here."),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "See example communities > ",
                style: TextStyle(color: Colors.green[800]),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green[900])),
              child: Text(
                "                       Start your Community                      ",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
