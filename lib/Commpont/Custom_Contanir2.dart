import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Custom_Contanir2() {
  return Stack(
    children: [
      Container(
        height: 150,
        width: 450,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: Color(0xff9682B6)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Need help ?",
                  style: TextStyle(
                      fontSize: 40, fontFamily: "NATS", color: Colors.white),
                ),
                Text(
                  "Make an appointment or chat with us.",
                  style: TextStyle(
                      fontSize: 16, fontFamily: "NATS", color: Colors.white),
                )
              ],
            ),
            SizedBox(
              width: 130,
            ),
            SvgPicture.asset("asset/Image/calendar.svg")
          ],
        ),
      )
    ],
  );
}
