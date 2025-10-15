part of 'tablet.dart';

class PresentationTablet extends StatelessWidget {
  const PresentationTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(flex: 3, child: const ProfileImage()),
            width20,
            Expanded(flex: 8, child: const ProfileIdentifierTitle()),
          ],
        ),
        height20,
        const ProfileIdentifierDescription(),
        height20,
        _LinkButtonsTablet(),
      ],
    );
  }
}
