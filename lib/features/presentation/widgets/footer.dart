part of '../portfolio_page.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF1B1B1B),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(
          '© 2025 My Portfolio. All rights reserved.',
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
