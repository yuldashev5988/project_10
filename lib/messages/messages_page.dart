import 'package:flutter/material.dart';
import 'package:project_10/home_screens/drawer_page.dart';

import '../main_pages/settings_page.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      backgroundColor: Colors.black,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
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
                  SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Direct messages",
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SettingsPage.id);
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                      color: Colors.white,
                      width: 0.5,
                      style: BorderStyle.solid),
                  top: BorderSide(
                      color: Colors.white,
                      width: 0.5,
                      style: BorderStyle.solid),
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: const Image(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/2e/45/29/2e452905b963d7fbbace6441374df89a.jpg"),
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Yuldashev Javohir",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
