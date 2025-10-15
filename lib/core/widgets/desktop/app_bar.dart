import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_locale.dart';
import 'package:my_portfolio/core/utils/context_x.dart';
import 'package:my_portfolio/core/utils/globals.dart';

class AppBarDesktop extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(AppLocale.aboutMe, style: context.bodyMedium),
        ),
        width20,
        TextButton(
          onPressed: () {},
          child: Text(AppLocale.hobby, style: context.bodyMedium),
        ),
        width20,
        TextButton(
          onPressed: () {},
          child: Text(AppLocale.contact, style: context.bodyMedium),
        ),
        width30,
      ],
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          AppLocale.portfolioTitle,
          style: context.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color(0xFF2c2c2c),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  List<Widget> desktopActions(BuildContext context) {
    return [];
  }

  List<Widget> mobileActions() {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_rounded, color: Color(0xFFe0e0e0)),
      ),
      width10,
    ];
  }
}
