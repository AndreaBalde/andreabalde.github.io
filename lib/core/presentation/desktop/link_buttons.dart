part of 'desktop.dart';

class _LinkButtonsDesktop extends StatelessWidget {
  const _LinkButtonsDesktop();

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
