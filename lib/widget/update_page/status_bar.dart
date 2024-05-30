// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class btatus_bar extends StatelessWidget {
  const btatus_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Status",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            PopupMenuButton(
                iconColor: Colors.black,
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                        child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Status Privecy",
                        style: TextStyle(color: Colors.black),
                      ),
                    ))
                  ];
                })
          ],
        ),
      ),
    );
  }
}
