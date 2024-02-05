import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project_10/alert_dialogs/cupertino_alert_page.dart';
import 'package:project_10/alert_dialogs/material_alert_page.dart';

class VerifiedPage extends StatefulWidget {
  const VerifiedPage({super.key});

  @override
  State<VerifiedPage> createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 26),
              child: const Text(
                "Nothing to see here yet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Likes,mentions,reposts, and a  whole  lot  more  -  when it comes from a verified accoun,you'll find it here.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Learn more",
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Not verified? Subscribe now  to  get  a  verified  account and join other people in quality conversations.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showCupertinoDialogExample(context);
              },
              child: const Text("Subscribe"),
            ),
          ],
        ),
      ),
    );
  }
}
