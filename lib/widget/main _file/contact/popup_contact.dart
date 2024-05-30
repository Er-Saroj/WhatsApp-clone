// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Popup_contact extends StatelessWidget {
  const Popup_contact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        // splashRadius: 51,
        position: PopupMenuPosition.under,
        surfaceTintColor: Colors.transparent,
        iconColor: Colors.black,
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Invite a friend",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Contact",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Refresh",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
            PopupMenuItem(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Help",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                    ))),
          ];
        });
  }
}
