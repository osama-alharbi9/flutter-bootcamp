import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String name;
  const CardWidget({required this.name, super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  Color _selectedColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(widget.name),
          CircleAvatar(backgroundColor: _selectedColor),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = Colors.black;
                    });
                  },
                  child: CircleAvatar(),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = Colors.blue;
                    });
                  },
                  child: CircleAvatar(),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = Colors.orange;
                    });
                  },
                  child: CircleAvatar(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
