// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class my_status extends StatelessWidget {
  const my_status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Stack(children: [
              SizedBox(
                  height: 75,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.red[600],
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 45,
                      color: Colors.amberAccent,
                    ),
                  )),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                  )),
              Positioned(
                  right: 2,
                  bottom: 2,
                  child: SizedBox(
                    height: 25,
                    width: 25,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 9, 78, 61),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ]),
            SizedBox(
              width: 21,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Status",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
                ),
                Text("Tap to add Status update")
              ],
            )
          ],
        ),
      ),
    );
  }
}
