import 'package:flutter/material.dart';
import 'package:project_10/home_screens/drawer_page.dart';
import 'package:project_10/main_pages/settings_page.dart';
import 'package:project_10/notifications/tab_bar_screens2/all_page.dart';
import 'package:project_10/notifications/tab_bar_screens2/mentions_page.dart';
import 'package:project_10/notifications/tab_bar_screens2/verified_page.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SettingsPage.id);
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          "Notifications",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        bottom: const TabBar(
          tabs: [
            Text(
              "All",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Verified",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Mentions",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
      body: PageView(
        children: const [
          TabBarView(
            children: [
              AllPage(),
              VerifiedPage(),
              MentionsPage(),
            ],
          ),
        ],
      ),
    );
  }
}
