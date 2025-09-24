part of '../portfolio_page.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.height * 0.1,
        left: context.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const _ProfileImage(),
              width30,
              const _ProfileIdentifier(),
            ],
          ),
          height30,
          const _ProfileDescription(),
          height30,

          _LinkButtons(),
        ],
      ),
    );
  }
}
