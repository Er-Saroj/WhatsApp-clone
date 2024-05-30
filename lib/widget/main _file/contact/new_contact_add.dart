import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_contact.dart';

class New_Contact extends StatefulWidget {
  const New_Contact({super.key});

  @override
  State<New_Contact> createState() => _New_ContactState();
}

class _New_ContactState extends State<New_Contact> {
  var firstnameController = TextEditingController();
  var lastnameController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Contact"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.person_2_outlined),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: firstnameController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black54),
                      focusColor: Colors.green,
                      labelText: "First name",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: lastnameController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black54),
                      focusColor: Colors.green,
                      labelText: "Last name",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black54),
                      focusColor: Colors.green,
                      labelText: "Phone number",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var contactProvider =
              Provider.of<ContactProvider>(context, listen: false);
          contactProvider.addContact(
            firstnameController.text,
            lastnameController.text,
            phoneController.text,
          );
          Navigator.pop(context);
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
