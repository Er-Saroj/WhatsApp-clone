// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: camel_case_types
class mute_option extends StatelessWidget {
  const mute_option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text("Muted updates"),
      //subtitle: Text("aman babu"),
      children: [
        ListTile(
          leading: Container(width: 75, height: 70, child: CircleAvatar()),
          title: Text("name"),
          subtitle: Text("Time"),
          // trailing: Text(""),
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
