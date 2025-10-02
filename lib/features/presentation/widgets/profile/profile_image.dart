part of '../../portfolio_page.dart';

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  final imageSize = 320.0;
  BorderRadius get borderRadius => BorderRadius.circular(1000.0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: imageSize,
        height: imageSize,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: borderRadius,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: borderRadius,
              child: Image.asset(
                ImageAssets.profile.path,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
