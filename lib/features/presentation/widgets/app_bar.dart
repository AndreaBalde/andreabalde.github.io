part of '../portfolio_page.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: context.isDesktop ? desktopActions() : mobileActions(),
      title: Row(children: [width30, TitleApp()]),
      backgroundColor: Color(0xFF363652),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  List<Widget> desktopActions() {
    return [
      TextButton(
        onPressed: () {},
        child: TextApp(text: "About me"),
      ),
      width20,
      TextButton(
        onPressed: () {},
        child: TextApp(text: "Hobby"),
      ),
      width20,
      TextButton(
        onPressed: () {},
        child: TextApp(text: "Contact"),
      ),
      width30,
    ];
  }

  List<Widget> mobileActions() {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_rounded, color: Colors.white),
      ),
      width10,
    ];
  }
}
