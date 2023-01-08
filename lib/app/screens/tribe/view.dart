import 'package:clubfolio/app/utils/utils.dart';
import 'package:flutter/material.dart';

class TribeView extends StatelessWidget {
  const TribeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'Tribe',
          style: TextStyle(color: lightColor),
        ),
      ),
    );
  }
}
