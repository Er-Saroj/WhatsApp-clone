// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class channel_text extends StatelessWidget {
  const channel_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Channels",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                PopupMenuButton(
                    // surfaceTintColor: Colors.transparent,
                    // color: Colors.transparent,

                    clipBehavior: Clip.none,
                    icon: Icon(Icons.add),
                    //icon: Icon(Icons.add)),
                    iconColor: Colors.black,
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                            child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Create channel",
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
                        PopupMenuItem(
                            child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Find channel",
                            style: TextStyle(color: Colors.black),
                          ),
                        ))
                      ];
                    })

                //IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                // Icon(Icons.add)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
              left: 8,
            ),
            child: Text(
              "Stay updated on topics that matter to you. Find channels to follow below.",
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
