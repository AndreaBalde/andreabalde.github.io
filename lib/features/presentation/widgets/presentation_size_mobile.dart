part of '../portfolio_page.dart';

class PresentationSizeMobile extends StatelessWidget {
  const PresentationSizeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(flex: 4, child: const _ProfileImage()),
            width10,
            Expanded(flex: 7, child: const _ProfileIdentifierTitle()),
          ],
        ),
        const _ProfileIdentifierDescription(),
      ],
    );
  }
}
