// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clubfolio/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WomenInfoBox extends StatelessWidget {
  const WomenInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 176,
          width: double.infinity,
          decoration: BoxDecoration(
              color: darkGreyColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: HexColor("#0A0A0A"),
              )),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              top: 98,
              bottom: 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: Image(
                                image: AssetImage("assets/images/img1.png")),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "HDFC Life",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: HexColor("#727272"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '₹',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: '194.82',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '↘ ',
                            style: TextStyle(
                              color: HexColor("#ED6262"),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: '3.87% in 1 year',
                            style: TextStyle(
                              color: HexColor("#ED6262"),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: darkGreyColor,
              ),
              color: greyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: greyColor,
                      ),
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage("assets/images/women1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vibha Padalkar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "CEO",
                        style: TextStyle(
                          color: HexColor("#727272"),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
