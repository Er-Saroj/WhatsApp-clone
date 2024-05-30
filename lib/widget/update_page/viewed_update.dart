// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: camel_case_types
class viewed_updates extends StatelessWidget {
  const viewed_updates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Viewed updates"),
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
