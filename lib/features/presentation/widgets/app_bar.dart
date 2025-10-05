part of '../portfolio_page.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: context.isDesktop ? desktopActions(context) : mobileActions(),
      title: Text(
        '<Andrea Baldessin />',
        style: context.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color(0xFF2c2c2c),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  List<Widget> desktopActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () {},
        child: Text("About me", style: context.bodyMedium),
      ),
      width20,
      TextButton(
        onPressed: () {},
        child: Text("Hobby", style: context.bodyMedium),
      ),
      width20,
      TextButton(
        onPressed: () {},
        child: Text("Contact", style: context.bodyMedium),
      ),
      width30,
    ];
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
