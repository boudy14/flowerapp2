import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget Custom_Card2({required String title, required String imageurl}) {
  return Container(
    // height: 200,
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
              child: Image.network(imageurl)),
          SizedBox(
            height: 10,
          ),
          Text(
            "$title",
            style: TextStyle(fontSize: 20, fontFamily: "NATS"),
            textAlign: TextAlign.left,
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
