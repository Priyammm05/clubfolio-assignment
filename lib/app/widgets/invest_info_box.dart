import 'package:clubfolio/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InvestInfoBox extends StatelessWidget {
  const InvestInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 95,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: darkGreyColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '14,372.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: '24',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ' ↗ ',
                        style: TextStyle(
                          color: HexColor("#00BA77"),
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                        ),
                      ),
                      TextSpan(
                        text: '12.32% today',
                        style: TextStyle(
                          color: HexColor("#00BA77"),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -1,
          left: 18,
          child: Container(
            height: 28,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: HexColor("##472E2E"),
              border: Border.all(
                color: HexColor("#0A0A0A"),
                width: 1.5,
                style: BorderStyle.solid,
              ),
            ),
            child: Center(
              child: Text(
                "nifty 50",
                style: TextStyle(
                  color: HexColor("#F7C97E"),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
