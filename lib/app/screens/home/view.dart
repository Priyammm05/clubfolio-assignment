import 'package:clubfolio/app/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(color: lightColor),
        ),
      ),
    );
  }
}
