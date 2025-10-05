part of '../portfolio_page.dart';

class PresentationSizeDesktop extends StatelessWidget {
  const PresentationSizeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.8,
      child: Column(
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
                child: const _ProfileImage(),
              ),
              const Spacer(),
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
