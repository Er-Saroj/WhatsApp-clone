// ignore_for_file: prefer_const_constructors

import 'package:first_app/widget/main%20_file/contact/Community.dart';
import 'package:first_app/widget/main%20_file/contact/Group.dart';
import 'package:first_app/widget/main%20_file/contact/new_contact.dart';
import 'package:first_app/widget/main%20_file/contact/new_contact_add.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_contact.dart';
import 'popup_contact.dart';

class Contaclist extends StatelessWidget {
  const Contaclist({super.key});

  @override
  Widget build(BuildContext context) {
    var contactProvider = Provider.of<ContactProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Select contact",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "${contactProvider.contacts.length} Contact(s)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle search action
            },
          ),
          Popup_contact(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Group(),
            Contact_list_page(),
            Community(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Contact On WhatsApp",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: 800,
              child: ListView.builder(
                itemCount: contactProvider.contacts.length,
                itemBuilder: (context, index) {
                  var contact = contactProvider.contacts[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Text(
                        contact.firstName[0].toUpperCase(),
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    title: Text("${contact.firstName} ${contact.lastName}"),
                    subtitle: Text(contact.subtitle),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => New_Contact(),
                  ),
                );
              },
              child: Text("Add New Contact"),
            ),
          ],
        ),
      ),
    );
  }
}
