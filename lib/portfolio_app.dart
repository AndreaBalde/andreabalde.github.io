import 'package:flutter/material.dart';
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
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
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
