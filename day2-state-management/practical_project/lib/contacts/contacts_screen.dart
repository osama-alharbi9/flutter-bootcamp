import 'package:flutter/material.dart';
import 'package:flutter_state_managment/contacts/add_contact_view.dart';
import 'package:flutter_state_managment/contacts/contacts_list.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  bool addingMode = true;
  List<String> names = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            addingMode = !addingMode;
          });
        },
        child: Icon(addingMode ? Icons.close : Icons.add),
      ),
      body: addingMode
          ? AddContactView(
              onPressed: (value) {
                setState(() {
                  names.add(value);
                  addingMode = false;
                });
              },
            )
          : ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ContactsCard(name: names[index]);
              },
            ),
    );
  }
}
