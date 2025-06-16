import 'package:flutter/material.dart';

class AddContactView extends StatefulWidget {
  final void Function(String value) onPressed;
  const AddContactView({required this.onPressed, super.key});

  @override
  State<AddContactView> createState() => _AddContactViewState();
}

class _AddContactViewState extends State<AddContactView> {
  String contactName = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Image.asset('assets/images/empty_contacts.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            onChanged: (value) {
              contactName = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter Contact Name',
              prefixIcon: Icon(Icons.person),
              fillColor: Color(0xFFC1C7D0),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC1C7D0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFC1C7D0)),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onPressed(contactName);
          },
          child: Text('Add Contact'),
        ),
      ],
    );
  }
}
