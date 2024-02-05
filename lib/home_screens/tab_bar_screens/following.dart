import 'package:flutter/material.dart';

class FollowingScreen extends StatefulWidget {
  static const String id="following";
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  bool visibility = false;
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  void doSignIn() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.email),
                      onPressed: () {},
                    ),
                  ),
                  validator: (input) {
                    return !input!.contains("@")
                        ? 'Please enter a valid email'
                        : null;
                  },
                  onSaved: (input) {
                    setState(
                      () {
                        email = input;
                      },
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            visibility = !visibility;
                          },
                        );
                      },
                      icon: visibility
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  validator: (input) {
                    return input!.length < 8
                        ? "Password must be at least 6 characters"
                        : null;
                  },
                  onSaved: (input) {
                    setState(() {
                      password = input;
                    });
                  },
                  obscureText: !visibility,
                  obscuringCharacter: "*",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  doSignIn();
                },
                child: const Text("Sign in"))
          ],
        ),
      ),
    );
  }
}
