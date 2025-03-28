import 'package:flutter/material.dart';
import 'package:intro_page/registr/sign_in.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  int page = 0;
  bool C1 = true;
  bool C2 = false;
  bool C3 = false;

  void Change() {
    if (page == 0) {
      C1 = true;
      C2 = false;
      C3 = false;
    }
    if (page == 1) {
      C1 = false;
      C2 = true;
      C3 = false;
    }
    if (page == 2) {
      C1 = false;
      C2 = false;
      C3 = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => SignIn()));
                  });
                },
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 460,
            child: PageView(
              onPageChanged:
                  (value) => setState(() {
                    page = value;
                    Change();
                  }),
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 360,
                      child: Image(
                        image: AssetImage("images/Online Learning.jpg"),
                      ),
                    ),
                    Text(
                      'Online Learning',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 2, 19, 118),
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'We Provide Classes Online Classes and Pre Recoreded Leacrures.!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(161, 158, 158, 158),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 360,
                      child: Image(
                        image: AssetImage("images/Learn Anytime.jpg"),
                      ),
                    ),
                    Text(
                      'Learn from Anytime',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 2, 19, 118),
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Booked or Some the Leactures for  Future',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(161, 158, 158, 158),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 360,
                      child: Image(
                        image: AssetImage("images/Get Sertificate.jpg"),
                      ),
                    ),
                    Text(
                      'Get Online Certificate',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 2, 19, 118),
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Analyse your scores and Track your results',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(161, 158, 158, 158),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 85),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 10,
                        width: C1 ? 20 : 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 1, 104, 189),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: C2 ? 20 : 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 1, 104, 189),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: C3 ? 20 : 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 1, 104, 189),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  child:
                      C3
                          ? ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                1,
                                104,
                                189,
                              ),
                              padding: EdgeInsets.all(10),
                              iconSize: 30,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(width: 7),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: const Color.fromARGB(
                                      255,
                                      1,
                                      104,
                                      189,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                          : ElevatedButton(
                            onPressed: () {
                              if (page < 2) controller.jumpToPage(page + 1);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                1,
                                104,
                                189,
                              ),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              iconSize: 30,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
