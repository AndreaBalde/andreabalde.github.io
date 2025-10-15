part of 'tablet.dart';

class _LinkButtonsTablet extends StatelessWidget {
  const _LinkButtonsTablet();

  final iconColor = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const GitHubButton(),
        width30,
        const LinkedInButton(),
        width30,
        const FiverrButton(),
        width30,
        const EmailButton(),
        width30,
        const CurriculumVitaeButton(),
      ],
    );
  }
}
