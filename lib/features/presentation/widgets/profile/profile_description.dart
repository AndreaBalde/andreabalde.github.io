part of '../../portfolio_page.dart';

class _ProfileDescription extends StatelessWidget {
  const _ProfileDescription();

  @override
  Widget build(BuildContext context) {
    final maxWidth = context.isDesktop
        ? context.width * 0.5
        : context.width * 0.9;
    return SizedBox(
      width: maxWidth,
      child: Text(
        "I'm a mobile app developer with experience in creating high-quality applications for both Android and iOS platforms, using Dart language and Flutter framework.\nI am passionate about technology and always eager to learn new things.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w200,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
      ),
    );
  }
}
