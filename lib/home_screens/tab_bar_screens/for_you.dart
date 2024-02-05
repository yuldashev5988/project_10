import 'package:flutter/material.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({super.key});

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/2d/79/39/2d7939ecf515be939df44e3bc9bc06e8.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 200,
                    height: 200,
                    child: const Text(
                      "Nature",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/originals/2d/79/39/2d7939ecf515be939df44e3bc9bc06e8.jpg"),
                          fit: BoxFit.cover),
                    ),
                    height: 200,
                    width: 200,
                    child: const Text(
                      "Tabiat",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext index, context) {
              return Container(
                alignment: Alignment.center,
                color: Colors.black87,
                child: const Text(
                  'Sliver app bar',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    ));
  }
}
