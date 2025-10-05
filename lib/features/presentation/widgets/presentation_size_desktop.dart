part of '../portfolio_page.dart';

class PresentationSizeDesktop extends StatelessWidget {
  const PresentationSizeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(flex: 5, child: const _ProfileImage()),
              width30,
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const _ProfileIdentifierTitle(),
                    const _ProfileIdentifierDescription(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
