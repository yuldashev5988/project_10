import 'package:flutter/material.dart';

class MentionsPage extends StatelessWidget {
  const MentionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: Colors.white, width: 0.9, style: BorderStyle.solid),
            ),
          ),
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Yuldoshev Jahongir",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Container(
                      height: 130,
                      width: 300,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                              color: Colors.white,
                              width: 0.9,
                              style: BorderStyle.solid),
                          bottom: BorderSide(
                              color: Colors.white,
                              width: 0.9,
                              style: BorderStyle.solid),
                          left: BorderSide(
                              color: Colors.white,
                              width: 0.9,
                              style: BorderStyle.solid),
                          right: BorderSide(
                              color: Colors.white,
                              width: 0.9,
                              style: BorderStyle.solid),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 14, top: 8, bottom: 6),
                        child: Column(
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
                                  width: 65,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Follow back",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 90),
                              child: Text(
                                "Yuldoshev Jahongir",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 133),
                              child: Text(
                                "@jahongiry834",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
