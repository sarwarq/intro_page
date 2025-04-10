import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_page/detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 13),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => Searching(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                      child: Container(
                        width: 260,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(43, 158, 158, 158),
                        ),
                        padding: EdgeInsets.only(left: 13),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            const SizedBox(width: 8),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: const Color.fromARGB(174, 0, 0, 0),
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => Notificationing(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                      child: Badge.count(
                        count: 3,
                        child: Icon(Icons.notifications_none_outlined),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 12),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi,Mark',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You have 3 exams pending',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,

                            child: Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        CupertinoPageRoute(
                                          builder:
                                              (context) => Deatail1(
                                                images: Image(
                                                  image: AssetImage(
                                                    'images/Biology.png',
                                                  ),
                                                ),
                                                title: 'Biology final exams',
                                                color: Colors.blueAccent,
                                              ),
                                          fullscreenDialog: true,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 10),
                                      height: 250,
                                      width: 180,
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          215,
                                          5,
                                          88,
                                          232,
                                        ),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 80,
                                            padding: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(220),
                                              color: Colors.white24,
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                'images/Biology.png',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Biology final exams',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '15 minutes',
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    192,
                                                    191,
                                                    191,
                                                  ),
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Icon(
                                                Icons.notifications_active,
                                                color: const Color.fromARGB(
                                                  255,
                                                  192,
                                                  191,
                                                  191,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        CupertinoPageRoute(
                                          builder:
                                              (context) => Deatail1(
                                                images: Image(
                                                  image: AssetImage(
                                                    'images/Chemic.png',
                                                  ),
                                                ),
                                                title: 'Chemistry daily test',
                                                color: const Color.fromARGB(
                                                  255,
                                                  243,
                                                  106,
                                                  33,
                                                ),
                                              ),
                                          fullscreenDialog: true,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      height: 250,
                                      width: 180,
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          243,
                                          106,
                                          33,
                                        ),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 80,
                                            padding: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(220),
                                              color: Colors.white24,
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                'images/Chemic.png',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Chemistry daily test',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '15 minutes',
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    192,
                                                    191,
                                                    191,
                                                  ),
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Icon(
                                                Icons.notifications_active,
                                                color: const Color.fromARGB(
                                                  255,
                                                  192,
                                                  191,
                                                  191,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        CupertinoPageRoute(
                                          builder:
                                              (context) => Deatail1(
                                                images: Image(
                                                  image: AssetImage(
                                                    'images/headphone.png',
                                                  ),
                                                ),
                                                title: 'Music daily learning',
                                                color: const Color.fromARGB(
                                                  255,
                                                  1,
                                                  167,
                                                  46,
                                                ),
                                              ),
                                          fullscreenDialog: true,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      height: 250,
                                      width: 180,
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          1,
                                          167,
                                          46,
                                        ),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 80,
                                            padding: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(220),
                                              color: Colors.white24,
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                'images/headphone.png',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Music daily learning',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '15 minutes',
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    192,
                                                    191,
                                                    191,
                                                  ),
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Icon(
                                                Icons.notifications_active,
                                                color: const Color.fromARGB(
                                                  255,
                                                  192,
                                                  191,
                                                  191,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Lessons',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'SEE ALL',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Text(
                            'Senior High School - 12th Grade',
                            style: TextStyle(
                              color: const Color.fromARGB(167, 158, 158, 158),
                              fontSize: 14,
                            ),
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 22, right: 20),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            CupertinoPageRoute(
                                              builder:
                                                  (context) => Detail2(
                                                    images:
                                                        "images/GeoGraphy.png",
                                                    title: "GeoGraphy",
                                                  ),
                                              fullscreenDialog: true,
                                            ),
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            color: Colors.blueAccent,
                                          ),
                                          padding: EdgeInsets.all(18),
                                          child: Image.asset(
                                            'images/Biology.png',
                                            height: 31,
                                            width: 31,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        'GeoGraphy',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CupertinoPageRoute(
                                        builder:
                                            (context) => Detail2(
                                              images: "images/Math.png",
                                              title: 'Math',
                                            ),
                                        fullscreenDialog: true,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 22, right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            color: Colors.blueAccent,
                                          ),
                                          padding: EdgeInsets.all(18),
                                          child: Image.asset(
                                            'images/Chemic.png',
                                            height: 31,
                                            width: 31,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text(
                                          'Math',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CupertinoPageRoute(
                                        builder:
                                            (context) => Detail2(
                                              images: "images/biology1.png",
                                              title: 'Biology',
                                            ),
                                        fullscreenDialog: true,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 22, right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            color: Colors.blueAccent,
                                          ),
                                          padding: EdgeInsets.all(18),
                                          child: Image.asset(
                                            'images/Biology.png',
                                            height: 31,
                                            width: 31,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text(
                                          'Biology',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CupertinoPageRoute(
                                        builder:
                                            (context) => Detail2(
                                              images: "images/Computer.png",
                                              title: 'Computer',
                                            ),
                                        fullscreenDialog: true,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 22, right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            color: Colors.blueAccent,
                                          ),
                                          padding: EdgeInsets.all(18),
                                          child: Image.asset(
                                            'images/headphone.png',
                                            height: 31,
                                            width: 31,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text(
                                          'Computer',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CupertinoPageRoute(
                                        builder:
                                            (context) => Detail2(
                                              images: "images/Music.png",
                                              title: 'Music',
                                            ),
                                        fullscreenDialog: true,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 22, right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            color: Colors.blueAccent,
                                          ),
                                          padding: EdgeInsets.all(18),
                                          child: Image.asset(
                                            'images/Chemic.png',
                                            height: 31,
                                            width: 31,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text(
                                          'Music',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      CupertinoPageRoute(
                                        builder:
                                            (context) => Detail2(
                                              images: "images/Dance.png",
                                              title: 'Dance',
                                            ),
                                        fullscreenDialog: true,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 22, right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                            color: Colors.blueAccent,
                                          ),
                                          padding: EdgeInsets.all(18),
                                          child: Image.asset(
                                            'images/Biology.png',
                                            height: 31,
                                            width: 31,
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        Text(
                                          'Dance',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
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

                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Live Video',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'SEE ALL',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: const Color.fromARGB(
                                      57,
                                      170,
                                      169,
                                      169,
                                    ),
                                  ),
                                  height: 140,
                                  width: 320,
                                  child: Row(
                                    children: [
                                      Image(
                                        height: 140,
                                        image: AssetImage('images/person.png'),
                                      ),

                                      Container(
                                        width: 190,
                                        margin: EdgeInsets.only(left: 13),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'TalkShow',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),

                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.more_vert),
                                                ),
                                              ],
                                            ),

                                            Text(
                                              'Top 10 eco campus in indonesia  that you can be...',
                                              textAlign: TextAlign.start,
                                            ),

                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),

                                              child: Text(
                                                'LIVE NOW',
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    180,
                                                    213,
                                                    212,
                                                    212,
                                                  ),
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: const Color.fromARGB(
                                      57,
                                      170,
                                      169,
                                      169,
                                    ),
                                  ),
                                  height: 140,
                                  width: 320,
                                  child: Row(
                                    children: [
                                      Image(
                                        height: 140,
                                        image: AssetImage('images/women.png'),
                                      ),

                                      Container(
                                        width: 190,
                                        margin: EdgeInsets.only(left: 13),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'TalkShow',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),

                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.more_vert),
                                                ),
                                              ],
                                            ),

                                            Text(
                                              'Top 10 eco campus in indonesia  that you can be...',
                                              textAlign: TextAlign.start,
                                            ),

                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),

                                              child: Text(
                                                'LIVE NOW',
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    180,
                                                    213,
                                                    212,
                                                    212,
                                                  ),
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: const Color.fromARGB(
                                      57,
                                      170,
                                      169,
                                      169,
                                    ),
                                  ),
                                  height: 140,
                                  width: 334,
                                  child: Row(
                                    children: [
                                      Image(
                                        height: 140,
                                        image: AssetImage('images/Robot.png'),
                                      ),

                                      Container(
                                        width: 190,
                                        margin: EdgeInsets.only(left: 13),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'TalkShow',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),

                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.more_vert),
                                                ),
                                              ],
                                            ),

                                            Text(
                                              'Top 10 eco campus in indonesia  that you can be...',
                                              textAlign: TextAlign.start,
                                            ),

                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),

                                              child: Text(
                                                'LIVE NOW',
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    180,
                                                    213,
                                                    212,
                                                    212,
                                                  ),
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
