part of '../../portfolio_page.dart';

class _ProfileIdentifier extends StatelessWidget {
  const _ProfileIdentifier();

  @override
  Widget build(BuildContext context) {
    final maxWidth = context.isDesktop
        ? context.width * 0.4
        : context.width * 0.6;
    final nameSize = context.isDesktop ? 34.0 : 30.0;
    final textSize = context.isDesktop ? 40.0 : 36.0;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ciao, I'm Andrea",
            style: TextStyle(
              fontSize: nameSize,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontFamily: GoogleFonts.roboto().fontFamily,
            ),
          ),
          height10,
          Text(
            "Mobile App Developer",
            style: TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3A9048),
              fontFamily: GoogleFonts.roboto().fontFamily,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
