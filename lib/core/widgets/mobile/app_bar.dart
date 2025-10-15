import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_locale.dart';
import 'package:my_portfolio/core/utils/context_x.dart';
import 'package:my_portfolio/core/utils/globals.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded, color: Color(0xFFe0e0e0)),
        ),
        width10,
      ],
      title: Text(
        AppLocale.portfolioTitle,
        style: context.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color(0xFF2c2c2c),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
