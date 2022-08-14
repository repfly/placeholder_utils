import 'package:flutter/material.dart';
import 'package:placeholder_utils_example/home/home.dart';

class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
