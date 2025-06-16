import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({super.key});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  List<Widget> circles = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Text Field')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            circles.removeLast();
          });
        },
        child: Icon(Icons.close),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: circles.length,
        itemBuilder: (context, index) {
          return circles[index];
        },
      ),
    );
  }
}
