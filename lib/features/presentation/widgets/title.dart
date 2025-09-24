part of '../portfolio_page.dart';

class TitleApp extends StatefulWidget {
  const TitleApp({super.key});

  @override
  State<TitleApp> createState() => _TitleAppState();
}

class _TitleAppState extends State<TitleApp> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      child: (hovering) => ConstrainedBox(
        constraints: BoxConstraints(minWidth: 250),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          child: hovering
              ? TextApp(text: '<App Developer/>', fontSize: 24)
              : TextApp(text: '<Andrea Baldessin/>', fontSize: 24),
        ),
      ),
    );
  }
}
