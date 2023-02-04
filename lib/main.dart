import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyGpUI());
}

class MyGpUI extends StatefulWidget {
  const MyGpUI({Key? key}) : super(key: key);

  @override
  State<MyGpUI> createState() => _MyGpUIState();
}

class _MyGpUIState extends State<MyGpUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
