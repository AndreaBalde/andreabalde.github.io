part of 'link_button.dart';

class _LinkButton extends StatefulWidget {
  const _LinkButton({
    required this.icon,
    required this.onPressed,
    required this.name,
  });

  final Widget icon;
  final VoidCallback onPressed;
  final String name;

  @override
  State<_LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<_LinkButton> {
  double get size {
    if (context.isMobile) {
      return 35;
    } else if (context.isTablet) {
      return 40;
    } else {
      return 45;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.name,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: const Color(0xFF388e3c),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          icon: widget.icon,
          onPressed: widget.onPressed,
          iconSize: size * 0.5,
        ),
      ),
    );
  }
}
