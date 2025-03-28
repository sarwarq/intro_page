import 'package:flutter/material.dart';
import 'package:intro_page/screen/Bookmark.dart';
import 'package:intro_page/screen/Home.dart';
import 'package:intro_page/screen/Notification.dart';
import 'package:intro_page/screen/Profile.dart';
import 'package:intro_page/screen/Top.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Widget> screen = [
    Home(),
    Bookmark(),
    Top(),
    NotificationLe(),
    Profile(),
  ];

  int curentIndexpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("icons/home.png"),
              width: 24,
              height: 24,
              color:
                  curentIndexpage == 0
                      ? Colors.blue
                      : const Color.fromARGB(199, 158, 158, 158),
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('icons/Bookmark.png'),
              width: 24,
              height: 24,
              color:
                  curentIndexpage == 1
                      ? Colors.blue
                      : const Color.fromARGB(199, 158, 158, 158),
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('icons/stats.png'),
              width: 24,
              height: 24,
              color:
                  curentIndexpage == 2
                      ? Colors.blue
                      : const Color.fromARGB(199, 158, 158, 158),
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("icons/calendar.png"),
              width: 24,
              height: 24,
              color:
                  curentIndexpage == 3
                      ? Colors.blue
                      : const Color.fromARGB(199, 158, 158, 158),
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("icons/portrait.png"),
              width: 24,
              height: 24,
              color:
                  curentIndexpage == 4
                      ? Colors.blue
                      : const Color.fromARGB(199, 158, 158, 158),
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: curentIndexpage,
        onTap: (value) {
          setState(() {
            curentIndexpage = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),

      body: screen[curentIndexpage],
    );
  }
}
