import 'package:clubfolio/app/utils/utils.dart';
import 'package:flutter/material.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'Portfolio',
          style: TextStyle(color: lightColor),
        ),
      ),
    );
  }
}
