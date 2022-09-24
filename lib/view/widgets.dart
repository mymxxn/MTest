import 'dart:ui';

import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';

final tilecolorgreen = Color.fromRGBO(130, 212, 179, 10);
final tilecolororange = Color.fromRGBO(251, 146, 117, 10);
final tilehalfblue = Color.fromRGBO(20, 117, 135, 10);
final tilehalfgrey = Color.fromRGBO(33, 38, 43, 10);
final gradientstartingcolor = Color.fromRGBO(226, 239, 243, 10);
final gradientendcolor = Color.fromRGBO(153, 192, 198, 10);
final roundtilecolor = Color.fromRGBO(33, 38, 43, 10);
final yellowcolor = Color.fromRGBO(221, 242, 71, 100);

final List list = [
  tilecolorgreen,
  tilecolororange,
  tilehalfblue,
  tilehalfgrey,
];
HomePageAppbar() => SliverAppBar(
      toolbarHeight: 340,
      elevation: 0,
      flexibleSpace: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 15,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(fontSize: 20),
                      ),
                      Image.asset(
                        "assets/notifications.png",
                        scale: 7,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 155,
                      width: 10,
                      decoration: BoxDecoration(
                          color: tilehalfgrey,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 190,
                      width: 150,
                      decoration: BoxDecoration(
                          color: tilecolorgreen,
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Owe me",
                                  style: TextStyle(
                                    color: Color.fromARGB(235, 151, 230, 199),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$ 1 250",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "2 debts",
                                  style: TextStyle(
                                      color: Colors.white38, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                "assets/bottom_left_arrow.png",
                                scale: 3,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 190,
                      width: 150,
                      decoration: BoxDecoration(
                          color: tilecolororange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "I owe",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "\$ 1 130",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "2 debts",
                                  style: TextStyle(
                                      color: Colors.white38, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                "assets/top_right_arrow.png",
                                scale: 3,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 155,
                      width: 12,
                      decoration: BoxDecoration(
                          color: tilehalfblue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30))),
                    ),
                  ),
                ],
              ),
            ),

            // Align(
            //     alignment: Alignment.center,
            //     child: GFItemsCarousel(
            //       rowCount: 2,
            //       //  hasPagination: true,
            //       // viewportFraction: 5.0,
            //       // enableInfiniteScroll: false,
            //       // passiveIndicator: Colors.white,
            //       // activeIndicator: const Color.fromRGBO(171, 165, 173, 100),
            //       children: list.map((url) {
            //         return Container(
            //           margin: EdgeInsets.symmetric(horizontal: 10.0),
            //           decoration: BoxDecoration(
            //               color: url, borderRadius: BorderRadius.circular(30)),
            //           child: Column(
            //             children: [
            //               Text("Owe me"),
            //               Text("\$1 250"),
            //               Text("2 debts")
            //             ],
            //           ),
            //         );
            //       }).toList(),
            //     )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 29),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    contain("assets/plus.png", "NEW"),
                    contain("assets/topright-arrow.png", "PAY OFF"),
                    contain("assets/bottomleft_arrow.png", "LEND"),
                    contain("assets/grid.png", "MORE")
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[gradientstartingcolor, gradientendcolor]),
        ),
      ),
    );
Widget tiles(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(30)),
    );
Widget contain(String img, String txt) => Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white38,
              radius: 42.5,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: roundtilecolor,
                    borderRadius: BorderRadius.circular(30)),
                child: Image.asset(
                  img,
                  scale: 10,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(txt)
      ],
    );
//------------------------------bottom navigation bar-------------------------------------//

Widget bottomnavigationbar() => ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        //unselectedItemColor: Colors.grey.shade300,
        selectedLabelStyle: const TextStyle(fontSize: 12,),
        unselectedFontSize: 12,
        currentIndex: 0,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      color: Colors.black,
                      height: 3,
                      width: 20,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/home.png"))),
                  ),
                ],
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/history.png"))),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
              icon: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/articles.png"))),
              ),
              label: 'Articles'),
          BottomNavigationBarItem(
              icon: Container(
                height: 35,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: yellowcolor,
                    image: DecorationImage(
                        scale: 8, image: AssetImage("assets/plus_2.png"))),
              ),
              label: '')
        ],
      ),
    );
