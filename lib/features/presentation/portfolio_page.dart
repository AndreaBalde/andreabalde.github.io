import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Clipboard, ClipboardData;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/utils/assets.dart';
import 'package:my_portfolio/core/utils/context_x.dart';
import 'package:my_portfolio/core/utils/globals.dart';
import 'package:my_portfolio/core/utils/link.dart';
import 'package:my_portfolio/core/widgets/hover_builder.dart';
import 'package:my_portfolio/core/widgets/text_app.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

part 'widgets/profile/link_button.dart';
part 'widgets/title.dart';
part 'widgets/presentation.dart';
part 'widgets/profile/profile_image.dart';
part 'widgets/profile/profile_identifier.dart';
part 'widgets/profile/profile_description.dart';
part 'widgets/profile/link_buttons.dart';
part 'widgets/app_bar.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  bool get isDesktop => ResponsiveBreakpoints.of(context).largerThan(TABLET);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DesktopAppBar(),

      body: Container(
        width: double.infinity,
        color: Color(0xFF181829),
        child: Stack(children: [const Presentation()]),
      ),
    );
  }
}
