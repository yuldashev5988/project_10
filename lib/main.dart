import 'package:flutter/material.dart';
import 'package:project_10/main_pages/settings_page.dart';
import 'package:project_10/main_pages/x_page.dart';
import 'package:project_10/search_page/search_page.dart';
import 'package:project_10/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const  SplashScreen(),
      routes: {
        Xpage.id: (context) => const Xpage(),
        SettingsPage.id: (context) => const SettingsPage(),
        SearchPage.id: (context) => const SearchPage(),
      },
    );
  }
}
