import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Custom_Card2() {
  return Container(
    height: 190,
    width: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Card(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Image.asset(
              "asset/Image/Mask group (1).png",
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "data",
            style: TextStyle(fontSize: 20, fontFamily: "NATS"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.attach_money,
                    color: Color(0xff9682B6),
                  ),
                  Text("85"),
                ],
              ),
              SvgPicture.asset("asset/Image/marketcar1.svg")
            ],
          )
        ],
      ),
    ),
  );
}
