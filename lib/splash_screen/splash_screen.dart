import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:project_10/main_pages/x_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Xpage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Expanded(child: Container()),
            Container(
              child: const Image(
                image: AssetImage("assets/logos/x.logo1.png"),
              ),
            )
                .animate()
                .fadeIn() // uses `Animate.defaultDuration`
                .scale() // inherits duration from fadeIn
                .move(delay: 300.ms, duration: 600.ms),
            Expanded(child: Container()),
            const Text(
              "Powered by Elon Musk",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),

            ),
            const SizedBox(
              height: 180,
            ),

          ],
        ),
      ),
    );
  }
}
