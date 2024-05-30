// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Channal_list extends StatelessWidget {
  const Channal_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 190,
        width: double.infinity,
        // color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(color: Colors.black12)
                      // color: Colors.amberAccent,
                      ),
                  height: 180,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                                height: 80,
                                width: 70,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                )),
                            Positioned(
                                bottom: 1,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                )),
                            Positioned(
                                height: 28,
                                width: 28,
                                bottom: 8,
                                right: 6,
                                child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Who Cares?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                            height: 35,
                            width: 140,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        Colors.green[50])),
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.w700),
                                )))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(color: Colors.black12)
                      // color: Colors.amberAccent,
                      ),
                  height: 180,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                                height: 80,
                                width: 70,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                )),
                            Positioned(
                                bottom: 1,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                )),
                            Positioned(
                                height: 28,
                                width: 28,
                                bottom: 8,
                                right: 6,
                                child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Who Cares?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                            height: 35,
                            width: 140,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        Colors.green[50])),
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                      color: Colors.green[900],
                                      fontWeight: FontWeight.w700),
                                )))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(color: Colors.black12)
                    // color: Colors.amberAccent,
                    ),
                height: 180,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                              height: 80,
                              width: 70,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                              )),
                          Positioned(
                              bottom: 1,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                              )),
                          Positioned(
                              height: 28,
                              width: 28,
                              bottom: 8,
                              right: 6,
                              child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Who Cares?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                          height: 35,
                          width: 140,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      Colors.green[50])),
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.w700),
                              )))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
