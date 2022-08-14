import 'package:flutter/material.dart';

class PlaceHolderImage extends StatefulWidget {
  /// Creates an rendered widget with given [height] and [width].
  const PlaceHolderImage(
      {Key? key,
      this.bgColor,
      this.centerChild,
      this.borderEnabled,
      this.border,
      this.height,
      this.width})
      : super(key: key);

  final Color? bgColor;
  final double? height;
  final double? width;
  final Widget? centerChild;
  final BoxBorder? border;
  final bool? borderEnabled;

  @override
  State<PlaceHolderImage> createState() => _PlaceHolderImageState();
}

class _PlaceHolderImageState extends State<PlaceHolderImage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.ease,
      duration: const Duration(milliseconds: 200),
      child: Container(
        height: widget.height,
        width: widget.width,
        color: widget.bgColor ?? Colors.blueGrey.withOpacity(0.5),
        padding: const EdgeInsets.all(4),
        child: Container(
          decoration: widget.borderEnabled == null
              ? BoxDecoration(
                  border: widget.border ??
                      Border.all(
                        color: Colors.blueGrey.withOpacity(0.8),
                        width: 3,
                      ),
                )
              : null,
          child: Center(
            child: widget.centerChild,
          ),
        ),
      ),
    );
  }
}
