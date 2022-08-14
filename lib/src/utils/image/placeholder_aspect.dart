import 'package:flutter/material.dart';

class PlaceHolderAspect extends StatefulWidget {
  /// Creates an rendered widget with given [aspectRatio].
  const PlaceHolderAspect(
      {Key? key,
      required this.aspectRatio,
      this.bgColor,
      this.centerChild,
      this.borderEnabled,
      this.constraints,
      this.border})
      : super(key: key);

  final double aspectRatio;
  final Color? bgColor;
  final BoxConstraints? constraints;
  final Widget? centerChild;
  final BoxBorder? border;
  final bool? borderEnabled;

  @override
  State<PlaceHolderAspect> createState() => _PlaceHolderAspectState();
}

class _PlaceHolderAspectState extends State<PlaceHolderAspect> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.ease,
      duration: const Duration(milliseconds: 200),
      child: Container(
        constraints: widget.constraints,
        child: AspectRatio(
          aspectRatio: widget.aspectRatio,
          child: Container(
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
        ),
      ),
    );
  }
}
