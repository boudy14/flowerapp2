import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Commpont/Custom_Card1.dart';
import '../Commpont/Custom_Catagorey.dart';
import '../Commpont/Custom_Contanir1.dart';
import '../Commpont/Custom_Contanir2.dart';
import 'Sec_Page.dart';
import 'Thrd_Page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "F L O R I S T",
          style:
              TextStyle(fontSize: 18, color: Colors.black, fontFamily: "NATS"),
        )),
        backgroundColor: Color(0xffF4F4F4),
        elevation: 0,
      ),
      backgroundColor: Color(0xffF4F4F4),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(fontSize: 33, fontFamily: "NATS"),
                  ),
                  SizedBox(
                    width: 218,
                  ),
                  SvgPicture.asset("asset/Image/icon1.svg")
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Custom_Contanir1(),
              SizedBox(
                height: 24,
              ),
              Custom_Contanir2(),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Color(0xff9682B6)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("asset/Image/icon2.svg"),
                          )
                        ],
                      ),
                      Text(
                        "ALL",
                        style: TextStyle(fontSize: 14, fontFamily: "NATS"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Sec_Page()));
                    },
                    child: Custom_Catagorey(
                        text: "Bouquet", image: "asset/Image/image1.png"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Custom_Catagorey(
                      text: "Table", image: "asset/Image/image2.png"),
                  SizedBox(
                    width: 30,
                  ),
                  Custom_Catagorey(
                      text: "Aisle", image: "asset/Image/image3.png"),
                  SizedBox(
                    width: 30,
                  ),
                  Custom_Catagorey(
                      text: "Accessories", image: "asset/Image/image4.png"),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Popularity",
                style: TextStyle(fontSize: 24, fontFamily: "NATS"),
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      thrd_Page()));
                        },
                        child: custom_card()),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      thrd_Page()));
                        },
                        child: custom_card())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
