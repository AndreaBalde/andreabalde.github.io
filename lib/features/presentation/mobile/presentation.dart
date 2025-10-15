part of '../portfolio_page.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(flex: 3, child: const _ProfileImage()),
            width20,
            Expanded(flex: 8, child: const _ProfileIdentifierTitle()),
          ],
        ),
        height20,
        const _ProfileIdentifierDescription(),
      ],
    );
  }
}
