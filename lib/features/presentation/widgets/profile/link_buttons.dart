part of '../../portfolio_page.dart';

class _LinkButtons extends StatelessWidget {
  const _LinkButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _LinkButton(
          icon: FontAwesomeIcons.github,
          onPressed: () async {
            final Uri url = Uri.parse(PersonalLink.github.url);
            launchUrl(url);
          },
          name: PersonalLink.github.name,
        ),
        width20,
        _LinkButton(
          icon: FontAwesomeIcons.linkedin,
          onPressed: () {
            final Uri url = Uri.parse(PersonalLink.linkedin.url);
            launchUrl(url);
          },
          name: PersonalLink.linkedin.name,
        ),
        width20,
        _LinkButton(
          icon: FontAwesomeIcons.link,
          onPressed: () {
            final Uri url = Uri.parse(PersonalLink.fiverr.url);
            launchUrl(url);
          },
          name: PersonalLink.fiverr.name,
        ),
        width20,
        _LinkButton(
          icon: Icons.email_rounded,
          onPressed: () {
            Clipboard.setData(ClipboardData(text: PersonalLink.email.url));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Copied to clipboard ✅")),
            );
          },
          name: PersonalLink.email.name,
        ),
        width20,
        _LinkButton(
          icon: FontAwesomeIcons.solidFile,
          onPressed: () {
            final Uri url = Uri.parse(PersonalLink.curriculum.url);
            launchUrl(url);
          },
          name: PersonalLink.curriculum.name,
        ),
      ],
    );
  }
}
