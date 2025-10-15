part of 'link_button.dart';

class CurriculumVitaeButton extends StatelessWidget {
  const CurriculumVitaeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _LinkButton(
      icon: SvgPicture.asset(
        ImageAssets.curriculum.path,
        colorFilter: ColorFilter.mode(_iconColor, BlendMode.srcIn),
      ),
      onPressed: () {
        final Uri url = Uri.parse(PersonalLink.curriculum.url);
        launchUrl(url);
      },
      name: PersonalLink.curriculum.name,
    );
  }
}
