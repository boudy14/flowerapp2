import 'package:flutter/material.dart';

Widget Custom_contanir3() {
  return Container(
    height: 35,
    width: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(7)),
      color: Colors.grey,
    ),
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 40,
            width: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color: Colors.grey,
            ),
            child: Icon(Icons.remove),
          ),
        ),
        Container(
          height: 40,
          width: 28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: Colors.white,
          ),
          child: Center(child: Text("1")),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 40,
            width: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              color: Colors.grey,
            ),
            child: Icon(Icons.add),
          ),
        ),
      ],
    ),
  );
}
