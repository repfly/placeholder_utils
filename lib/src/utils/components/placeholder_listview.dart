import 'package:flutter/material.dart';

class PlaceholderListView extends StatelessWidget {
  final int? itemCount;
  const PlaceholderListView({Key? key, this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Container(
              color: index.isOdd ? Colors.black12 : null,
              child: Text(
                index.toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              )),
        );
      },
    );
  }
}
