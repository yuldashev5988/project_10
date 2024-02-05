import 'package:flutter/material.dart';
import 'package:project_10/main_pages/x_page.dart';

class SettingsPage extends StatefulWidget {
  static const String id = "settings_page";

  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: const Text(
          "Timeline Settings",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Xpage.id);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child:const  Padding(
          padding:  EdgeInsets.only(left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nothing here yet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Text("Try pinning a List or a Community to have",style: TextStyle(color: Colors.grey),),
              Text("easier access to your favorite content.",style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }
}
