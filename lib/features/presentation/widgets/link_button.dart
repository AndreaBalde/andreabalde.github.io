part of '../portfolio_page.dart';

class _LinkButton extends StatelessWidget {
  const _LinkButton({
    required this.icon,
    required this.onPressed,
    required this.name,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String name;

  final size = 40.0;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: name,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: const Color(0xFF3A9048),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          icon: Icon(icon, color: Color(0xFF181829)),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
