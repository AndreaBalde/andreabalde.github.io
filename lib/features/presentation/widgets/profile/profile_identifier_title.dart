part of '../../portfolio_page.dart';

class _ProfileIdentifierTitle extends StatelessWidget {
  const _ProfileIdentifierTitle();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hi,",
                style: context.headlineLarge?.copyWith(
                  color: Color(0xFF388e3c),
                ),
              ),
              TextSpan(text: " I'm Andrea", style: context.headlineLarge),
            ],
          ),
        ),
        Text(
          "Mobile App Developer",
          style: context.headlineSmall?.copyWith(color: Color(0xFF388e3c)),
        ),
      ],
    );
  }
}
