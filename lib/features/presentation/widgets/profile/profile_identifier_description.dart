part of '../../portfolio_page.dart';

class _ProfileIdentifierDescription extends StatelessWidget {
  const _ProfileIdentifierDescription();

  @override
  Widget build(BuildContext context) {
    final maxWidth = context.isDesktop
        ? context.width * 0.4
        : context.width * 0.6;
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I'm a dedicated and passionate Mobile App Developer with a strong focus on creating intuitive and high-performance applications. "
            "My journey into the world of programming started with a fascination for how technology can solve real-world problems.\n\n"
            "Over the years, I've honed my skills in Flutter and Dart, allowing me to build cross-platform applications that are both beautiful and functional. "
            "I enjoy every aspect of the development process, from the initial concept and design to deployment and maintenance. When I'm not coding, "
            "I enjoy exploring new technologies, contributing to open-source projects, and hiking in the mountains. "
            "I believe in continuous learning and am always looking for new challenges to grow as a developer and as a person.",
            style: context.bodyLarge?.copyWith(height: 1.5),
          ),
          height20,
          _LinkButtons(),
        ],
      ),
    );
  }
}
