import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Clipboard, ClipboardData;
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/core/utils/assets.dart';
import 'package:my_portfolio/core/utils/context_x.dart';
import 'package:my_portfolio/core/utils/globals.dart';
import 'package:my_portfolio/core/utils/link.dart';
import 'package:url_launcher/url_launcher.dart';

part 'widgets/profile/link_button.dart';
part 'widgets/presentation.dart';
part 'widgets/profile/profile_image.dart';
part 'widgets/profile/profile_identifier_title.dart';
part 'widgets/profile/profile_identifier_description.dart';
part 'mobile/presentation.dart';
part 'tablet/presentation.dart';
part 'desktop/presentation.dart';
part 'desktop/link_buttons.dart';
part 'widgets/app_bar.dart';
part 'widgets/footer.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  EdgeInsetsGeometry get padding {
    if (context.isMobile) {
      return EdgeInsets.symmetric(
        horizontal: context.width * 0.06,
        vertical: context.height * 0.02,
      );
    } else if (context.isTablet) {
      return EdgeInsets.symmetric(
        horizontal: context.width * 0.05,
        vertical: context.height * 0.03,
      );
    } else {
      return EdgeInsets.symmetric(
        horizontal: context.width * 0.1,
        vertical: context.height * 0.05,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DesktopAppBar(),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF181818),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: padding,
                child: Column(children: [const Presentation()]),
              ),
              height50,
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
