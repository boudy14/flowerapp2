import 'package:flutter/material.dart';

Widget Custom_Contanir1() {
  return Container(
    height: 40,
    width: 380,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 33,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xff9682B6)),
            child: Center(
              child: Text(
                "Wedding",
                style: TextStyle(
                    fontSize: 16, fontFamily: "NATS", color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 33,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.grey),
            child: Center(
              child: Text(
                "Decor",
                style: TextStyle(
                    fontSize: 16, fontFamily: "NATS", color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 33,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.grey),
            child: Center(
              child: Text(
                "Gift",
                style: TextStyle(
                    fontSize: 16, fontFamily: "NATS", color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
