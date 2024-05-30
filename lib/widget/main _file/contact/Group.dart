// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  const Group({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child: const Icon(
            Icons.people_outlined,
            color: Colors.white,
          ),
          backgroundColor: Colors.green[900],
        ),
        title: const Text(
          "New group",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
        ),
      ),
    );
  }
}
