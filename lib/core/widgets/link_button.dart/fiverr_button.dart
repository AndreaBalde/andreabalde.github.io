part of 'link_button.dart';

class FiverrButton extends StatelessWidget {
  const FiverrButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _LinkButton(
      icon: SvgPicture.asset(
        ImageAssets.fiverr.path,
        colorFilter: ColorFilter.mode(_iconColor, BlendMode.srcIn),
      ),
      onPressed: () {
        final Uri url = Uri.parse(PersonalLink.fiverr.url);
        launchUrl(url);
      },
      name: PersonalLink.fiverr.name,
    );
  }
}
