import 'package:flutter/material.dart';
import 'package:placeholder_utils/placeholder_utils.dart';

class UtilsDemoPage extends StatefulWidget {
  const UtilsDemoPage({Key? key}) : super(key: key);
  static Route<dynamic> route() =>
      MaterialPageRoute<dynamic>(builder: (context) => const UtilsDemoPage());
  @override
  State<UtilsDemoPage> createState() => _UtilsDemoPageState();
}

class _UtilsDemoPageState extends State<UtilsDemoPage> {
  TextEditingController futureLoremController = TextEditingController();
  TextEditingController loremIpsumController = TextEditingController();
  final InputDecoration inputDecoration = InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utils'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: loremIpsumController,
                maxLines: 5,
                decoration: inputDecoration,
              ),
              ElevatedButton(
                onPressed: () {
                  loremIpsumController.text =
                      loremIpsum(paragraphs: 1, words: 10, initWithLorem: true);
                  setState(() {});
                },
                child: const Text('Generate lorem ipsum'),
              ),
              const Divider(),
              Align(
                alignment: Alignment.center,
                child: Text('Bool value: ${getRandomBool().toString()}'),
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {});
                  }),
                  child: const Text('get random bool')),
              const Divider(),
              Align(
                alignment: Alignment.center,
                child: Text('Get value: ${getDoubleOrInt().runtimeType}'),
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {});
                  }),
                  child: const Text('get random type in double or int')),
            ],
          ),
        ),
      ),
    );
  }
}
