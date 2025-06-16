import 'package:flutter/material.dart';
import 'package:flutter_state_managment/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool addingMode = true;
  final List<String> names = [];
  String? name;
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
          ? Column(
              children: [
                TextField(
                  onChanged: (value) {
                    name = value;
                  },
                ),

                ElevatedButton(
                  onPressed: () {
                    if (name != null) {
                      names.add(name!);

                      setState(() {
                        addingMode = false;
                      });
                    }
                  },
                  child: Text('add'),
                ),
              ],
            )
          : ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) => CardWidget(name: names[index]),
            ),
    );
  }
}
