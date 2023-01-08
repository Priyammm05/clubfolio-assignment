import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InformationBox extends StatelessWidget {
  const InformationBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: HexColor("#0A0A0A"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: HexColor("#0A0A0A"),
                ),
                color: Colors.transparent,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: AssetImage("assets/images/img2.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 14),
            Text(
              "This collection is not investment advice.\nDo your own research before investing.",
              maxLines: 2,
              softWrap: false,
              style: TextStyle(
                color: HexColor("#727272"),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
