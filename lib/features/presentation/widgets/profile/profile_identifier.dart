part of '../../portfolio_page.dart';

class _ProfileIdentifier extends StatelessWidget {
  const _ProfileIdentifier();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: context.width * 0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ciao, I'm Andrea",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontFamily: GoogleFonts.roboto().fontFamily,
            ),
          ),
          height10,
          Text(
            "Mobile App Developer",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3A9048),
              fontFamily: GoogleFonts.roboto().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
