part of 'link_button.dart';

class GitHubButton extends StatelessWidget {
  const GitHubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _LinkButton(
      icon: Icon(FontAwesomeIcons.github, color: _iconColor),
      onPressed: () async {
        final Uri url = Uri.parse(PersonalLink.github.url);
        launchUrl(url);
      },
      name: PersonalLink.github.name,
    );
  }
}
