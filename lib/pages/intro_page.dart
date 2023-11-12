import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                "lib/assets/nike-logo.png",
                height: 240,
                width: 240,
              )),
          const SizedBox(height: 48),
          // title
          const Text("Just Do It.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          // sub title
          const Text(
            "Brand new snakers and custom kicks make with premium quality.",
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          //start button
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage())),
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child:
                      Text("Shop Now", style: TextStyle(color: Colors.white))),
            ),
          )
        ]),
      ),
    );
  }
}
