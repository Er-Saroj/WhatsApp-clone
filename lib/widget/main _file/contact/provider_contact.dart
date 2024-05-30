import 'package:flutter/material.dart';

class Contact {
  final String firstName;
  final String lastName;
  final String subtitle;

  Contact(this.firstName, this.lastName, this.subtitle);
}

class ContactProvider with ChangeNotifier {
  List<Contact> _contacts = [];

  List<Contact> get contacts => _contacts;

  void addContact(String firstName, String lastName, String subtitle) {
    _contacts.add(Contact(firstName, lastName, subtitle));
    notifyListeners();
  }
}
