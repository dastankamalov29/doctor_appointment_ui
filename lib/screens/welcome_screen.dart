import 'package:flutter/material.dart';

import '../styles/styles.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/doctors.png"),
              const Text("Doctors Online", style: welcomePage),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  height: size.height / 15,
                  width: size.width / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("Let's go", style: letsgoButton),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/lined heart.png",
                color: Colors.white,
                width: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
