import 'package:flutter/material.dart';

import 'item_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.notifications_rounded,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right:10),
              child: Image.asset("image/profile_img.png"),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25, left: 25),
              child: const Text(
                "Hi it is YANDANI NGCOLO",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 25),
              child: const Text(
                "YOU ARE WELCOME KWA-DR YANDANI ",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.amber,
                    offset: Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: 0
                  )
                ]
              ),
              height: 60,

              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: const TextField(
                        maxLines: 1,
                        autofocus: false,
                        style: TextStyle(
                          color: Colors.limeAccent,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search"
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                  ,Container(
                    margin: const EdgeInsets.only(right: 20, top: 10),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Show all",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontFamily: 'Roboto,'
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoCategories("image/brain.jpg", "Brain", "16 Doctors"),
                  demoCategories("image/images.jpg", "Heart", "16 Doctors"),
                  demoCategories("image/tooth.jpg", "Tooth", "16 Doctors"),
                  demoCategories("image/bone.jpg", "Bone", "16 Doctors"),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  const Text(
                    "Top Rated",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                  ,Container(
                    margin: const EdgeInsets.only(right: 20, top: 10),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Show all",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontFamily: 'Roboto,'
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    demoTopRatedDr(
                      "image/image.jpg",
                      "Dr. NGCOLO YANDANI",
                      "Heart and Tooth Surgery",
                      "5.1",
                    ),
                    demoTopRatedDr(
                      "image/image.jpg",
                      "Dr. MTHOKOZISI MGWAYI",
                      "Bone Surgery",
                      "5.1",
                    ),
                    demoTopRatedDr(
                      "image/image.jpg",
                      "Dr. MBALENTLE CHUTSHELA",
                      "Brain Surgery",
                      "5.1",
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  Widget demoCategories(String image, String name, String drQuality){
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(image),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.07)
            ),
            child: Text(
              drQuality,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Roboto',
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget demoTopRatedDr(String image, String name, String speciality, String rating){
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailsPage()));
      },
      child: Container(
        height: 90,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(image),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.limeAccent,
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            speciality,
                            style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: size.width * 0.25),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Rating: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: "Roboto"
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: "Roboto"
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
