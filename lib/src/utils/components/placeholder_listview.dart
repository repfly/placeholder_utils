import 'package:flutter/material.dart';

class PlaceholderListView extends StatelessWidget {
  final int? itemCount;
  final Widget? child;
  final ScrollPhysics? physics;
  final Axis? scrollDirection;
  const PlaceholderListView(
      {Key? key,
      this.itemCount,
      this.child,
      this.physics,
      this.scrollDirection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: scrollDirection ?? Axis.vertical,
      itemCount: itemCount,
      physics: physics,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: double.infinity,
          height: 50,
          color: index.isOdd ? Colors.black12 : null,
          child: Center(
            child: child ??
                Text(
                  index.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
          ),
        );
      },
    );
  }
}
