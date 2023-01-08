import 'package:clubfolio/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShortInfoBox extends StatelessWidget {
  const ShortInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(255, 255, 255, 0.2),
        ),
        borderRadius: BorderRadius.circular(12),
        color: HexColor("#260E0E"),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 2),
          Text(
            "Tell your friend to check out\ntop companies run by Women 👩🏽‍💻",
            style: TextStyle(
              color: yellowColor,
              height: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            height: 36,
            decoration: BoxDecoration(
              border: Border.all(
                color: HexColor("#F7C97E").withOpacity(0.2),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
              color: HexColor("#F7C97E").withOpacity(0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 4),
                Image(
                  image: AssetImage("assets/images/whatsapp.png"),
                  height: 52,
                ),
                Text(
                  "share",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: yellowColor,
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
