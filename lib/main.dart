import 'package:flutter/material.dart';

void main() {
  //This sets "MyApp" as the root of the app.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  showSnackBar(BuildContext context, String msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment01_ostd'),
        // Inside this array all the actions are previewed.
        actions: [
          IconButton(
            onPressed: () {
              showSnackBar(context, 'This is home icon');
            },
            icon: const Icon(Icons.home),
          ),
          IconButton(
              onPressed: () {
                showSnackBar(context, 'This is email icon');
              },
              icon: const Icon(Icons.email)),
          IconButton(
            onPressed: () {
              showSnackBar(context, 'This is search icon');
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
