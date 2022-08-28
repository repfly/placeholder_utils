import 'package:flutter/material.dart';
import 'package:placeholder_utils/placeholder_utils.dart';
import 'package:placeholder_utils_example/placeholder_widgets/sub/list_view_demo.dart';

class WidgetsDemoPage extends StatefulWidget {
  const WidgetsDemoPage({Key? key}) : super(key: key);
  static Route<dynamic> route() =>
      MaterialPageRoute<dynamic>(builder: (context) => const WidgetsDemoPage());

  @override
  State<WidgetsDemoPage> createState() => _WidgetsDemoPageState();
}

class _WidgetsDemoPageState extends State<WidgetsDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: const [
                  Text('Aspect widget'),
                  PlaceHolderAspect(
                    aspectRatio: 4 / 3,
                    constraints: BoxConstraints(maxHeight: 90),
                    centerChild: Text('4:3'),
                  ),
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: const [
                  Text('Sized widget'),
                  PlaceHolderImage(
                    height: 90,
                    width: 120,
                    centerChild: Text('90x120'),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ListViewDemo()));
                  },
                  child: const Text('listview'))
            ],
          )
        ],
      ),
    );
  }
}
