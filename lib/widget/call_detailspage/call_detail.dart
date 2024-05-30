// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app/widget/call_detailspage/search_bar.dart';

import 'package:first_app/widget/main%20_file/all_data.dart';
import 'package:first_app/widget/main%20_file/element.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class calldetails extends StatelessWidget {
  const calldetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => searchtextfield()));
            },
          ),
          PopupMenuButton(
            iconColor: Colors.black,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Clear call log",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 90,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green[900],
                      child: Icon(
                        Icons.attachment_outlined,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create call link",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Shere a link for your WhatApp call",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 20,
                      child: Text(
                        "Recent",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final NumberInputElement model = Singh().models[index];
                    return ListTile(
                      leading: // Icon(model.icon.toString()),
                          SizedBox(
                        height: 100,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1712174766230-cb7304feaafe?q=80&w=1928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          // backgroundImage: AssetImage("assets/images/eight.jpg")
                        ),
                      ),
                      title: Text(model.tital.toString()),
                      subtitle: Text(model.naptol.toString()),
                      trailing: Text(model.Name.toString()),
                    );
                  },
                  itemCount: Singh().models.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.white,
                      height: 5,
                      // thickness: 2,
                    );
                  },
                ),
              ),
            ),
            // Stack(
            //   children: [
            //     Positioned(
            //         top: 2,
            //         right: 2,
            //         child: FloatingActionButton(
            //           onPressed: () {},
            //           child: Icon(Icons.call),
            //         ))
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
