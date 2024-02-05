import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_10/home_screens/drawer_page.dart';
import 'package:project_10/home_screens/tab_bar_screens/following.dart';
import 'package:project_10/home_screens/tab_bar_screens/for_you.dart';
import 'package:project_10/main_pages/settings_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const DrawerPage(),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.person_outline,
                size: 30,
                color: Colors.white,
              ),
            );
          },
        ),
        title: SvgPicture.asset(
          "assets/svg_images1/twitter_logo.svg",
          height: 45,
          width: 45,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SettingsPage.id);
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
        bottom: const TabBar(
          tabs: [
            Text(
              "Account",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              "For you",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        children: const [
          TabBarView(
            children: [
              FollowingScreen(),
              ForYouScreen(),

            ],
          ),
        ],
      ),
    );
  }
}
