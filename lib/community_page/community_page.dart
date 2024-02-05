import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return             Container(
      color: Colors.black,
      child: Container(
        width: double.infinity,
        child: Column(
          children: [

            const SizedBox(
              height: 200,
            ),
            Container(
              height: 300,
              width: 300,
              child: Lottie.asset("assets/lotties/busines.json"),
            ),
            const Text(
              "You are in community page",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ).animate().fade(duration: 2000.ms).slideY(
              curve: Curves.easeIn,
            ),
          ],
        ),
      ),
    )
    ;
  }
}
