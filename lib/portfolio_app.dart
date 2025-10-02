import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/features/presentation/portfolio_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: textTheme,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: double.infinity, name: DESKTOP),
        ],

        child: const PortfolioPage(),
      ),
    );
  }
}

TextTheme get textTheme => const TextTheme(
  headlineLarge: TextStyle(
    fontSize: 40,
    color: Color(0xFFe0e0e0),
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    fontSize: 32,
    color: Color(0xFFe0e0e0),
    fontWeight: FontWeight.w600,
  ),
  headlineSmall: TextStyle(
    fontSize: 24,
    color: Color(0xFFe0e0e0),
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: TextStyle(
    fontSize: 18,
    color: Color(0xFFe0e0e0),
    fontWeight: FontWeight.w500,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    color: Color(0xFFe0e0e0),
    fontWeight: FontWeight.w500,
  ),
  bodySmall: TextStyle(
    fontSize: 14,
    color: Color(0xFFe0e0e0),
    fontWeight: FontWeight.w500,
  ),
  labelLarge: TextStyle(
    fontSize: 16,
    color: Color(0xFFe0e0e0),
    fontWeight: FontWeight.w500,
  ),
);
