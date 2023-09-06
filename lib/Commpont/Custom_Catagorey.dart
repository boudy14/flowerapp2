import 'package:flutter/material.dart';

Widget Custom_Catagorey({
  required String text,
  required String image,
}) {
  return Column(
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: Color(0xff9682B6)),
        child: Image.asset(
          "$image",
        ),
      ),
      Text(
        "$text",
        style: TextStyle(fontSize: 14, fontFamily: "NATS"),
      )
    ],
  );
}
