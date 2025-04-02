import 'dart:ui';

import 'package:flutter/material.dart';

class Deatail1 extends StatelessWidget {
  final Image images;
  final String title;
  final Color color;
  const Deatail1({
    super.key,
    required this.images,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 20, top: 24),

        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(220),
                color: Colors.white24,
              ),
              child: images,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              '40 questions / 60 minutes',
              style: TextStyle(color: Colors.white38),
            ),

            const SizedBox(height: 20),

            Text(
              "In the intricate world of biochemistry, the molecular melodies of life reveal patterns as complex as any musical composition. Just as music theory dissects harmony and rhythm, biochemistry explores the symphony of reactions and interactions within living organisms. Both disciplines require a deep understanding of underlying principles; while piochemists decode the language of proteins and enzymes, musicians interpret the nuances of notes and scales. Learning music enhances cognitive skills, which can mirror the analytical thinking needed in biochemistry. By embracing both fields, one can appreciate how thestructured beauty of music parallels the",
              style: TextStyle(color: Colors.white38),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Start Exam',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Detail2 extends StatelessWidget {
  final String images;
  final String title;
  const Detail2({super.key, required this.images, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Image(image: AssetImage(images), fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 160),
                  child: SizedBox(
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '7 chapter',
                              style: TextStyle(color: Colors.white60),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 22,
                                  backgroundImage: AssetImage(
                                    "images/Robot.png",
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Erwin Jose',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text(
                                      'Teacher',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        Container(
                          height: 120,
                          width: 110,
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black,
                          ),
                          child: Image(image: AssetImage(images)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Select Chapter',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Introduction',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Intoduction to ${title}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Text(
                            '81',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maps type & Usages',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Learn about maps type  & how  to use each...',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Text(
                            '79',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Population & Country',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Learn the worldwide population & country...',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Text(
                            '80',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Climate',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Learn about climate.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Text(
                            '60',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Earth-forming Process',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Learn how the earth-forming process  be...',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Text(
                            '56',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rocks',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Learn the type of the rocks, and their spec...',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Text(
                            '90',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Earthquake',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Learn about seismology...',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),

                        CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          child: Text(
                            '90',
                            style: TextStyle(color: Colors.white, fontSize: 23),
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
    );
  }
}

class Searching extends StatelessWidget {
  const Searching({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(43, 158, 158, 158),
                    ),
                    padding: EdgeInsets.only(left: 13),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                        icon: Icon(Icons.search, size: 20),
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 16, color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
              child: Text(
                'Search history',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Notificationing extends StatelessWidget {
  const Notificationing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        actions: [
          Container(
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),

                Icon(Icons.more_vert),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/Robot.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/Dance.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/Computer.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/Robot.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/Computer.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/Dance.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/person.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/women.png'),
                    maxRadius: 24,
                  ),
              
                  const SizedBox(width: 15,),
              
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabeela sends a new mess..', style: TextStyle(fontSize: 17),),
                      Text('2 min ago', style: TextStyle(fontSize: 14, color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}



