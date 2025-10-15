import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/features/presentation/portfolio_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Balde's Portfolio",
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: textTheme,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 820, name: TABLET),
          const Breakpoint(start: 821, end: double.infinity, name: DESKTOP),
        ],

        child: const PortfolioPage(),
      ),
    );
  }
}

final _textColor = const Color(0xFFe0e0e0);

TextTheme get textTheme => TextTheme(
  headlineLarge: TextStyle(
    fontSize: 40,
    color: _textColor,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    fontSize: 32,
    color: _textColor,
    fontWeight: FontWeight.w600,
  ),
  headlineSmall: TextStyle(
    fontSize: 24,
    color: _textColor,
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: TextStyle(
    fontSize: 18,
    color: _textColor,
    fontWeight: FontWeight.w500,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    color: _textColor,
    fontWeight: FontWeight.w500,
  ),
  bodySmall: TextStyle(
    fontSize: 14,
    color: _textColor,
    fontWeight: FontWeight.w500,
  ),
  labelLarge: TextStyle(
    fontSize: 16,
    color: _textColor,
    fontWeight: FontWeight.w500,
  ),
);
