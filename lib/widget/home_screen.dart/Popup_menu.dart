// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class popup_menu extends StatelessWidget {
  const popup_menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        // splashRadius: 51,
        position: PopupMenuPosition.under,
        surfaceTintColor: Colors.white,
        iconColor: Colors.white,
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "View contact",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Media, links and docs,",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Nute notification",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Disappearing masseges",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Walpaper",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Media, links,",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: Colors.black,
                    ))
              ],
            )),
          ];
        });
  }
}
