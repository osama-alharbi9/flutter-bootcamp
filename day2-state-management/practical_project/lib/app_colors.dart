import 'package:flutter/material.dart';

class AppColors extends StatefulWidget {
  const AppColors({super.key});

  @override
  State<AppColors> createState() => _AppColorsState();
}

class _AppColorsState extends State<AppColors> {
  Color selectedColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    print('build function fetched');
    return Scaffold(
      appBar: AppBar(title: Text('Colors')),
      body: Column(
        children: [
          Text(
            'What is your favourite color?',
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),

          Container(
            color: selectedColor,
            height: 80,
            width: 100,
            padding: EdgeInsets.all(24),
          ),

          MaterialButton(
            color: Colors.red,
            onPressed: () {
              setState(() {
                selectedColor = Colors.red;
              });
            },
            child: Text('Click me'),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              setState(() {
                selectedColor = Colors.orange;
              });
            },
            child: Text('Click me'),
          ),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.green),
            ),
            onPressed: () {
              selectedColor = Colors.green;
            },
            child: Text('Click me'),
          ),
        ],
      ),
    );
  }
}
