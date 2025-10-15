part of 'desktop.dart';

class PresentationDesktop extends StatelessWidget {
  const PresentationDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,

              constraints: BoxConstraints(
                minWidth: context.width * 0.15,
                maxWidth: context.width * 0.2,
              ),
              child: const ProfileImage(),
            ),
            const Spacer(),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ProfileIdentifierTitle(),
                  height20,
                  const ProfileIdentifierDescription(),
                  height20,
                  _LinkButtonsDesktop(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
