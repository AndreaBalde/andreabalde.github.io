part of 'mobile.dart';

class _LinkButtonsMobile extends StatelessWidget {
  const _LinkButtonsMobile();

  final iconColor = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const GitHubButton(),
        const LinkedInButton(),
        const FiverrButton(),
        const EmailButton(),
        const CurriculumVitaeButton(),
      ],
    );
  }
}
