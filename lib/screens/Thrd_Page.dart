import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Commpont/Custom_Contanir3.dart';
import '../Commpont/Custom_Icon.dart';
import 'Home_Page.dart';

final List<String> ImageList = [
  'https://th.bing.com/th/id/OIP.kvBrpWXvJVBmmnNzEslCnAHaF8?w=244&h=197&c=7&r=0&o=5&pid=1.7',
  'https://th.bing.com/th/id/OIP.IuDPvwdTpu_KaoCtJ_idlgHaLI?w=116&h=180&c=7&r=0&o=5&pid=1.7',
  'https://th.bing.com/th/id/R.06bc9675ad77a37c18f6c0c92d51d7eb?rik=%2bgPka5Tg2H7mkA&pid=ImgRaw&r=0',
];

class thrd_Page extends StatefulWidget {
  @override
  State<thrd_Page> createState() => _thrd_PageState();
}

class _thrd_PageState extends State<thrd_Page> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        backgroundColor: Color(0xffF4F4F4),
        elevation: 0,
      ),
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider(
                items: ImageList.map((item) => Container(
                      child: Center(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: 500,
                        ),
                      ),
                    )).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              width: 450,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Spark",
                        style: TextStyle(fontSize: 30, fontFamily: "NATS"),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Color(0xff9682B6),
                          ),
                          Text(
                            "90",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "NATS",
                                color: Color(0xff9682B6)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Availability",
                        style: TextStyle(fontSize: 20, fontFamily: "NATS"),
                      ),
                      Text(
                        "In Stock",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "NATS",
                            color: Color(0xff1ECA2F)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rating",
                        style: TextStyle(fontSize: 20, fontFamily: "NATS"),
                      ),
                      Custom_icon()
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 35,
              width: 450,
              //color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "quantity",
                    style: TextStyle(fontSize: 24, fontFamily: "NATS"),
                  ),
                  Custom_contanir3()
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 170,
              width: 450,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(fontSize: 32, fontFamily: "NATS"),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Color(0xff9682B6),
                          ),
                          Text(
                            "90",
                            style: TextStyle(
                                fontSize: 32,
                                fontFamily: "NATS",
                                color: Color(0xff9682B6)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 205,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Color(0xff9682B6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "asset/Image/marketcar2.svg",
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Text(
                            "Add to cart",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: "NATS",
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon:
      //             SvgPicture.asset("asset/Image/house.svg", color: Colors.grey),
      //         label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset(
      //           "asset/Image/Catalog.svg",
      //           color: Color(0xff4B194F),
      //         ),
      //         label: "Catalog"),
      //     BottomNavigationBarItem(
      //         icon:
      //             SvgPicture.asset("asset/Image/Chat.svg", color: Colors.grey),
      //         label: "Chat"),
      //     BottomNavigationBarItem(
      //         icon: SvgPicture.asset("asset/Image/marketcar3.svg",
      //             color: Colors.grey),
      //         label: "Cart")
      //   ],
      //   selectedItemColor: Color(0xff4B194F),
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
