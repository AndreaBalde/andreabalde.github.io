part of '../portfolio_page.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.height * 0.1,
        right: context.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(flex: 5, child: const _ProfileImage()),
              Expanded(flex: 7, child: const _ProfileIdentifier()),
            ],
          ),
        ],
      ),
    );
  }
}
