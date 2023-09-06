import 'package:flutter/material.dart';

import 'Custom_Icon.dart';

Widget custom_card() {
  return Container(
    height: 300,
    width: 311,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(7)),
    ),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 311,
            child: Image.asset(
              "asset/Image/image5.png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Spark",
                style: TextStyle(
                    fontSize: 30, fontFamily: "NATS", color: Color(0xff9682B6)),
              ),
              SizedBox(
                width: 80,
              ),
              Custom_icon()
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.attach_money,
                color: Color(0xff9682B6),
              ),
              Text(
                "90",
                style: TextStyle(fontSize: 22, fontFamily: "NATS"),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
