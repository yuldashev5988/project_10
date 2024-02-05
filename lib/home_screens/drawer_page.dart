import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: const Text(
              'Bookmarks',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_outline,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: const Text(
              'Lists',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: const Text(
              'Spaces',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.voice_chat_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          ListTile(
            selectedColor: Colors.black,
            title: const Text(
              'Monetization',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.monetization_on_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: Text(
              "Settings & Support",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
