part of 'link_button.dart';

class LinkedInButton extends StatelessWidget {
  const LinkedInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _LinkButton(
      icon: Icon(FontAwesomeIcons.linkedin, color: _iconColor),
      onPressed: () {
        final Uri url = Uri.parse(PersonalLink.linkedin.url);
        launchUrl(url);
      },
      name: PersonalLink.linkedin.name,
    );
  }
}
