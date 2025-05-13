import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/primary_button.dart';
import '../core/widgets/primary_button.dart'; // botão customizado
import 'register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/pet_walk_title.png',
                  fit: BoxFit.contain,
                ),

                Image.asset(
                  'assets/images/pet_walk_intro.png',
                  height: size.height * 0.35,
                  fit: BoxFit.contain,
                ),

                const Text(
                  'The Pet Walk app is designed for taking care of your pet. '
                  'Fix objectives based on their needs. See their progress and '
                  'share them with the community.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 90, 89, 89),
                    height: 1.5,
                  ),
                ),

                PrimaryButton(
                  text: "Let’s start",
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
