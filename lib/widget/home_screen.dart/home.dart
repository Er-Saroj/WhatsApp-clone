// ignore_for_file: prefer_const_constructors

import 'package:first_app/widget/home_screen.dart/chatbox.dart';
import 'package:first_app/widget/main%20_file/contact/Contactlist.dart';
import 'package:first_app/widget/main%20_file/contact/provider_contact.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    var contactProvider = Provider.of<ContactProvider>(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.teal[700],
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          PopupMenuButton(
            iconColor: Colors.black,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "New group",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "New broadcast",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Linked devices",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Payments",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Switch accounts",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontStyle: FontStyle.normal),
                        ))),
              ];
            },
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.brown[50]),
              height: 50,
              child: TextField(
                // autofillHints: const <String>[],
                decoration: InputDecoration(
                    hintText: "Search...",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search_outlined)),
                controller: TextEditingController(),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                // final NumberInputElement model = Singh().models[index];
                var contact = contactProvider.contacts[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => HomeChatBox(
                                  chat: contact,
                                )),
                      );
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1712174766230-cb7304feaafe?q=80&w=1928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    ),
                    title: Text("${contact.firstName} ${contact.lastName}"),
                    subtitle: Text(contact.subtitle),
                    trailing: Text("Time"),
                  ),
                );
              },
              itemCount: contactProvider.contacts.length,
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.white,
                  height: 5,
                  // thickness: 2,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[900],
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Contaclist()));
        },
        child: Icon(
          Icons.add_comment_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
