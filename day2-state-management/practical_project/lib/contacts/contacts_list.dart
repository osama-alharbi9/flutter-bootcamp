import 'package:flutter/material.dart';

class ContactsCard extends StatefulWidget {
  final String name;
  const ContactsCard({required this.name,super.key});

  @override
  State<ContactsCard> createState() => _ContactsCardState();
}

class _ContactsCardState extends State<ContactsCard> {
  Color SelectedColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                spacing: 4,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Icon(Icons.contact_mail),
                      ),
                      Text(
                        widget.name,
                        style: TextStyle(color: SelectedColor),
                      ),
                      Spacer(),
                      CircleAvatar(backgroundColor: SelectedColor),
                    ],
                  ),
                  Divider(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 8,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.red;
                            });
                          },
                          child: CircleAvatar(backgroundColor: Colors.red),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.orange;
                            });
                          },
                          child: CircleAvatar(backgroundColor: Colors.orange),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.yellow;
                            });
                          },
                          child: CircleAvatar(backgroundColor: Colors.yellow),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.blue;
                            });
                          },
                          child: CircleAvatar(backgroundColor: Colors.blue),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.black;
                            });
                          },
                          child: CircleAvatar(backgroundColor: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.cyanAccent;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.cyanAccent,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.green;
                            });
                          },
                          child: CircleAvatar(backgroundColor: Colors.green),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              SelectedColor = Colors.pink;
                            });
                          },
                          child: CircleAvatar(backgroundColor: Colors.pink),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
