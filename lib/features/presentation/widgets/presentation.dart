part of '../portfolio_page.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  final size = 150.0;
  final borderRadius = const BorderRadius.all(Radius.circular(30));

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
              Container(
                width: size,
                height: size,
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
                child: ClipRRect(
                  borderRadius: borderRadius,
                  child: Image.asset(
                    "assets/images/profile.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              width30,
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: context.width * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ciao, I'm Andrea",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                    height10,
                    Text(
                      "Mobile App Developer",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3A9048),
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          height30,
          SizedBox(
            width: context.width * 0.5,
            child: Text(
              "I'm a mobile app developer with experience in creating high-quality applications for both Android and iOS platforms, using Dart language and Flutter framework.\nI am passionate about technology and always eager to learn new things.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            ),
          ),

          height30,

          Row(
            children: [
              _LinkButton(
                icon: FontAwesomeIcons.github,
                onPressed: () {},
                name: "GitHub",
              ),
              width20,
              _LinkButton(
                icon: FontAwesomeIcons.linkedin,
                onPressed: () {},
                name: "LinkedIn",
              ),
              width20,
              _LinkButton(
                icon: FontAwesomeIcons.link,
                onPressed: () {},
                name: "Fiverr",
              ),
              width20,
              _LinkButton(
                icon: Icons.email_rounded,
                onPressed: () {},
                name: "Email",
              ),
              width20,
              _LinkButton(
                icon: FontAwesomeIcons.solidFile,
                onPressed: () {},
                name: "Curriculum",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
