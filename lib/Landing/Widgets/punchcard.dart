import 'package:flutter/material.dart';
import 'package:punchhr/Models/models.dart';

// TODO: Fix this, it looks like shit
class PunchCardWidget extends StatelessWidget {
  final String qr =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/296px-QR_code_for_mobile_English_Wikipedia.svg.png";
  final Punchcard punchcard;
  const PunchCardWidget({required this.punchcard, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(
        int.parse(punchcard.primaryColor.substring(1, 7), radix: 16) +
            0xFF000000);
    Color secondaryColor = Color(
        int.parse(punchcard.secondaryColor.substring(1, 7), radix: 16) +
            0xFF000000);
    return Container(
      height: 200.0,
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: primaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  punchcard.name,
                  style: TextStyle(color: secondaryColor),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  qr,
                  color: secondaryColor,
                  height: 40.0,
                  width: 40.0,
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  punchcard.picture,
                  height: 40,
                  width: 40.0,
                )
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Container(height: 10.0, color: secondaryColor)
          ],
        ),
      ),
    );
  }
}
