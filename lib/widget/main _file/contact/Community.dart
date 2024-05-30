import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child: Icon(
            Icons.people_alt_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.green[900],
        ),
        title: Text(
          "New Community",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
        ),
      ),
    );
  }
}
