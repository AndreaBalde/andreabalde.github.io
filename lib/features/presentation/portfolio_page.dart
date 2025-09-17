import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/globals.dart';
import 'package:my_portfolio/core/widgets/text_app.dart';
import 'package:my_portfolio/features/presentation/widgets/title.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: TextApp(text: "About me"),
          ),
          width20,
          TextButton(
            onPressed: () {},
            child: TextApp(text: "Hobby"),
          ),
          width20,
          TextButton(
            onPressed: () {},
            child: TextApp(text: "Contact"),
          ),
          width30,
        ],
        title: Row(children: [width30, TitleApp()]),
        backgroundColor: Color(0xFF363652),
      ),
      body: Container(
        color: Color(0xFF181829),
        child: Center(
          child: Text(
            'Welcome to My Portfolio!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
