import 'package:flutter/material.dart';
import 'package:placeholder_utils/placeholder_utils.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return const PlaceholderListView(itemCount: 50);
  }
}
