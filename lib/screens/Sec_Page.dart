import 'dart:convert';
import 'dart:developer';

import 'package:floewrapp2/screens/Thrd_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Commpont/Custom_Card2.dart';
import 'Home_Page.dart';
import 'package:http/http.dart' as http;

Future<List> fetchData() async {
  final response = await http.get(Uri.parse('https://dummyjson.com/products'));
  if (response.statusCode == 200) {
    Map<String, dynamic> data = jsonDecode(response.body);
    log(data["products"].toString());
    return data["products"];
  }

  return [];
}

class Sec_Page extends StatefulWidget {
  @override
  State<Sec_Page> createState() => _Sec_PageState();
}

class _Sec_PageState extends State<Sec_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    },
                    child: SvgPicture.asset("asset/Image/iconBack (1).svg")),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Bridal Bouquet",
                  style: TextStyle(fontSize: 30, fontFamily: "NATS"),
                ),
                Spacer(),
                SvgPicture.asset("asset/Image/Icon 3.svg"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Catalog",
                    style: TextStyle(fontSize: 24, fontFamily: "NATS"),
                  ),
                  SvgPicture.asset(
                    "asset/Image/icon4.svg",
                  )
                ],
              ),
            ),
            Container(
                width: double.infinity,
                child: FutureBuilder(
                    future: fetchData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      }
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Wrap(
                          runSpacing: 30,
                          spacing: 30,
                          alignment: WrapAlignment.center,
                          children:
                              List.generate(snapshot.data!.length, (index) {
                            return InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              thrd_Page()));
                                },
                                child: Custom_Card2(
                                  title:
                                      snapshot.data!.elementAt(index)["title"],
                                  imageurl: snapshot.data!
                                      .elementAt(index)["thumbnail"],
                                ));
                          }),
                        );
                      }
                      return CircularProgressIndicator();
                    }))
          ],
        ),
      ),
    );
  }
}

// Center(
//                 child: Wrap(
//                   spacing: 20,
//                   runSpacing: 20,
//                   children: [

//                     InkWell(
//                         onTap: () {
//                           Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(
//                                   builder: (BuildContext context) =>
//                                       thrd_Page()));
//                         },
//                         child: Custom_Card2()),
//                     InkWell(
//                         onTap: () {
//                           Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(
//                                   builder: (BuildContext context) =>
//                                       thrd_Page()));
//                         },
//                         child: Custom_Card2()),
//                     InkWell(
//                         onTap: () {
//                           Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(
//                                   builder: (BuildContext context) =>
//                                       thrd_Page()));
//                         },
//                         child: Custom_Card2()),
//                     InkWell(
//                         onTap: () {
//                           Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(
//                                   builder: (BuildContext context) =>
//                                       thrd_Page()));
//                         },
//                         child: Custom_Card2()),
//                     InkWell(
//                         onTap: () {
//                           Navigator.of(context).pushReplacement(
//                               MaterialPageRoute(
//                                   builder: (BuildContext context) =>
//                                       thrd_Page()));
//                         },
//                         child: Custom_Card2()),
//                   ],
//                 ),
//               ),