// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';

class Resently_updates extends StatelessWidget {
  const Resently_updates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Resently updates"),
      //subtitle: Text("aman babu"),
      children: [
        ListTile(
          leading: Container(width: 75, height: 70, child: CircleAvatar()),
          title: Text("name"),
          subtitle: Text("Time"),
        ),
        ListTile(
          leading: Container(width: 75, height: 70, child: CircleAvatar()),
          title: Text("name"),
          subtitle: Text("Time"),
        ),
        ListTile(
          leading: Container(width: 75, height: 70, child: CircleAvatar()),
          title: Text("name"),
          subtitle: Text("Time"),
        ),
        ListTile(
          leading: Container(width: 75, height: 70, child: CircleAvatar()),
          title: Text("name"),
          subtitle: Text("Time"),
        ),
        ListTile(
          leading: Container(width: 75, height: 70, child: CircleAvatar()),
          title: Text("name"),
          subtitle: Text("Time"),
        ),
        ListTile(
          leading: Container(width: 75, height: 70, child: CircleAvatar()),
          title: Text("name"),
          subtitle: Text("Time"),
        ),
      ],
    );
  }
}
