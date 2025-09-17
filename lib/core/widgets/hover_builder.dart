import 'package:flutter/material.dart';

class HoverWidget extends StatefulWidget {
  const HoverWidget({super.key, required this.child});

  final Widget Function(bool) child;

  @override
  State<HoverWidget> createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool hovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      mouseCursor: SystemMouseCursors.help,
      onHover: (hovering) {
        setState(() {
          this.hovering = hovering;
        });
      },
      child: widget.child(hovering),
    );
  }
}
