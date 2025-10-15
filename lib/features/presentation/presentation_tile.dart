part of 'portfolio_page.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) {
      return const PresentationMobile();
    } else if (context.isTablet) {
      return const PresentationTablet();
    } else {
      return const PresentationDesktop();
    }
  }
}
