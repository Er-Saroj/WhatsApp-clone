// ignore_for_file: prefer_const_constructors

import 'package:first_app/widget/main%20_file/contact/new_contact_add.dart';
import 'package:flutter/material.dart';

class Contact_list_page extends StatelessWidget {
  const Contact_list_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => New_Contact()));
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child: Icon(
            Icons.person_add_alt_1,
            color: Colors.white,
          ),
          backgroundColor: Colors.green[900],
        ),
        title: Text(
          "New contact",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
        ),
        trailing: IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
      ),
    );
  }
}
