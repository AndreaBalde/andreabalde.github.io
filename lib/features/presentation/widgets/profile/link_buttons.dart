part of '../../portfolio_page.dart';

class _LinkButtons extends StatelessWidget {
  const _LinkButtons();

  final iconColor = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _LinkButton(
          icon: Icon(FontAwesomeIcons.github, color: iconColor),
          onPressed: () async {
            final Uri url = Uri.parse(PersonalLink.github.url);
            launchUrl(url);
          },
          name: PersonalLink.github.name,
        ),
        width30,
        _LinkButton(
          icon: Icon(FontAwesomeIcons.linkedin, color: iconColor),
          onPressed: () {
            final Uri url = Uri.parse(PersonalLink.linkedin.url);
            launchUrl(url);
          },
          name: PersonalLink.linkedin.name,
        ),
        width30,
        _LinkButton(
          icon: SvgPicture.asset(
            ImageAssets.fiverr.path,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
          onPressed: () {
            final Uri url = Uri.parse(PersonalLink.fiverr.url);
            launchUrl(url);
          },
          name: PersonalLink.fiverr.name,
        ),
        width30,
        _LinkButton(
          icon: Icon(Icons.email_rounded, color: iconColor),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: PersonalLink.email.url));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Copied to clipboard ✅")),
            );
          },
          name: PersonalLink.email.name,
        ),
        width30,
        _LinkButton(
          icon: SvgPicture.asset(
            ImageAssets.curriculum.path,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
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
