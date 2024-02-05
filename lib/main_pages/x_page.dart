import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'package:iconly/iconly.dart';
import 'package:project_10/community_page/community_page.dart';

import 'package:project_10/home_screens/home_screen.dart';
import 'package:project_10/home_screens/tab_bar_screens/following.dart';
import 'package:project_10/messages/messages_page.dart';
import 'package:project_10/notifications/notifications_page.dart';
import 'package:project_10/search_page/search_page.dart';
import 'package:project_10/main_pages/settings_page.dart';

class Xpage extends StatefulWidget {
  static const String id = "x_page";

  const Xpage({super.key});

  @override
  State<Xpage> createState() => _XpageState();
}

class _XpageState extends State<Xpage> {
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: PageView(
          controller: pageController,
          children: const [
            HomeScreen(),
            SearchPage(),
            CommunityPage(),
            NotificationsPage(),
            MessagesPage(),
          ],
          onPageChanged: (int index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(
              () {
                selectedIndex = index;
                pageController.animateToPage(index,
                    duration: const Duration(
                      microseconds: 200,
                    ),
                    curve: Curves.bounceOut);
              },
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.home),
              label: "Home",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyBold.search),
              label: "Search",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Community",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.doorbell_outlined),
              label: "Notifications",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email_outlined),
              label: "Messages",
              backgroundColor: Colors.black,
            ),
          ],
          selectedItemColor: Colors.white,
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22),
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          onOpen: () => print("Speed dial opened"),
          onClose: () => print("Speed dial closed"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          children: [
            SpeedDialChild(
              child: const Icon(
                Icons.photo_album_outlined,
              ),
              backgroundColor: Colors.greenAccent,
              label: "Photo Album",
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              onTap: () => print("First pressed"),
            ),
            SpeedDialChild(
              child: const Icon(
                Icons.keyboard_voice,
              ),
              backgroundColor: Colors.blueAccent,
              label: "Spaces",
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              onTap: () => print("Second  pressed"),
            ),
            SpeedDialChild(
              child: const Icon(
                Icons.camera,
              ),
              backgroundColor: Colors.pinkAccent,
              label: "Go Live",
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              onTap: () => print("Third pressed"),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      ),
    );
  }
}
