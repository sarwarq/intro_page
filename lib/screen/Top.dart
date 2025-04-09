import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            padding: EdgeInsets.only(top: 52, left: 12, right: 12, bottom: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Leaderboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Senior High School - 12th Grade',
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                Leaders(
                  colorr: Colors.amber,
                  num: 1,
                  img: 'images/Avatar/photo_1.jpg',
                  title: "Karnia Oktavia",
                  defi: "Excellent work",
                  top: 100,
                ),
                Leaders(
                  colorr: Colors.grey,
                  num: 2,
                  img: 'images/Avatar/photo_2.jpg',
                  title: "Kamaludin Abdul",
                  defi: "Good work",
                  top: 97,
                ),
                Leaders(
                  colorr: Colors.red,
                  num: 3,
                  img: 'images/Avatar/photo_3.jpg',
                  title: "Mark Paul",
                  defi: "Nice work",
                  top: 96,
                ),
                Leaders(
                  colorr: Colors.white,
                  num: 4,
                  img: 'images/Avatar/photo_4.jpg',
                  title: "Jeck",
                  defi: "Nice work",
                  top: 92,
                ),
                Leaders(
                  colorr: Colors.white,
                  num: 5,
                  img: 'images/Avatar/photo_5.jpg',
                  title: "John Smith",
                  defi: "Nice",
                  top: 50,
                ),
                Leaders(
                  colorr: Colors.white,
                  num: 6,
                  img: 'images/Avatar/photo_6.jpg',
                  title: "Paul",
                  defi: "Good",
                  top: 97,
                ),
                Leaders(
                  colorr: Colors.white,
                  num: 7,
                  img: 'images/Avatar/photo_7.jpg',
                  title: "Smith",
                  defi: "Nice work",
                  top: 96,
                ),
                Leaders(
                  colorr: Colors.white,
                  num: 8,
                  img: 'images/Avatar/photo_8.jpg',
                  title: "Lee",
                  defi: "Nice work",
                  top: 92,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Leaders extends StatelessWidget {
  Color colorr;
  int num;
  String img;
  String title;
  String defi;
  int top;
  Leaders({
    super.key,
    required this.colorr,
    required this.num,
    required this.img,
    required this.title,
    required this.defi,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 86,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: colorr,
                maxRadius: 11,
                child: Text(
                  "$num",
                  style: TextStyle(color: num < 4 ? Colors.white : Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 9),
                child: CircleAvatar(
                  backgroundImage: AssetImage(img),
                  radius: 25,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    defi,
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "$top",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
