import 'package:flutter/material.dart';
import 'package:placeholder_utils_example/placeholder_utils/utils_demo_page.dart';
import 'package:placeholder_utils_example/placeholder_widgets/widgets_demo_age.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder Utils'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, UtilsDemoPage.route());
                },
                child: const Text('Utils')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, WidgetsDemoPage.route());
                },
                child: const Text('Widgets'))
          ],
        ),
      ),
    );
  }
}
