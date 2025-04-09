
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_page/detail.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  String Available = "Available";
  String Passed = "Passed";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          actions: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 21, vertical: 2.8),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exam',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Senior High-School -12th Gade',
                    style: TextStyle(color: Colors.white54, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            dividerColor: Colors.black,
            labelColor: Colors.white,
            tabs: [Tab(text: Available), Tab(text: Passed)],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  Avail(
                    images: "images/Biology.png",
                    title: "Biology",
                    defi: "Ongoing",
                    Value: 0.85,
                    cl: Detail2(images: "images/Biology.png", title: "Biology"),
                  ),
                  Avail(
                    images: "images/Music.png",
                    title: "Music",
                    defi: "Available on 3:20 PM",
                    Value: 0.5,
                    cl: Detail2(images: "images/Music.png", title: "Music"),
                  ),
                  Avail(
                    images: "images/Computer.png",
                    title: "Computer",
                    defi: "Available on 5:30 PM",
                    Value: 0.25,
                    cl: Detail2(images: "images/Computer.png", title: "Computer"),
                  ),
                  Avail(
                    images: "images/headphone.png",
                    title: "Headphone",
                    defi: "Ongoing",
                    Value: 0.95,
                    cl: Detail2(images: "images/Computer.png", title: "Headphone"),
                  ),
                  Avail(
                    images: "images/Math.png",
                    title: "Math",
                    defi: "Available on 4:50 PM",
                    Value: 0.45,
                    cl: Detail2(images: "images/Math.png", title: "Math"),
                  ),
                  Avail(
                    images: "images/Chemic.png",
                    title: "Chemic",
                    defi: "Available on 6:20 PM",
                    Value: 0.60,
                    cl: Detail2(images: "images/Chemic.png", title: "Chemic"),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  Avail(
                    images: "images/GeoGraphy.png",
                    title: "Geography",
                    defi: "Availble on 3:20",
                    Value: 0.75,
                    cl: Detail2(images: "images/GeoGraphy.png", title: "GeoGraphy"),
                  ),
                  Avail(
                    images: "images/Dance.png",
                    title: "Dance",
                    defi: "22/09/2025",
                    Value: 1,
                    cl: Detail2(images: "images/Dance.png", title: "Dance"),
                  ),
                  Avail(
                    images: "images/Math.png",
                    title: "Math",
                    defi: "22/09/2025",
                    Value: 0.3,
                    cl: Detail2(images: "images/Math.png", title: "Math"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Avail extends StatelessWidget {
  String images;
  String title;
  String defi;
  double Value;
  Widget cl;
  Avail({
    super.key,
    required this.images,
    required this.title,
    required this.defi,
    required this.Value,
    required this.cl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => cl,
              fullscreenDialog: true,
            ),
          );
        },
        child: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                width: MediaQuery.of(context).size.height,
                height: 78,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.height,
              height: 78,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 45,
                        child: Image.asset(images),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: TextStyle(fontSize: 17)),
                          Text(
                            defi,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      value: Value,
                      color: Colors.blue[600],
                      strokeWidth: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
