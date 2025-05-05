import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Pet Walk',
                  style: TextStyle(
                    fontSize: 48,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF87BFFF),
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 0,
                        color: Colors.white,
                      ),
                      Shadow(
                        offset: Offset(4, 4),
                        blurRadius: 10,
                        color: Color(0x2087BFFF),
                      ),
                    ],
                  ),
                ),
                // foto
                Image.asset(
                  'assets/images/pet_walk_intro.png',
                  height: size.height * 0.35,
                  fit: BoxFit.contain,
                ),
                // texto
                const Text(
                  'The Pet Walk app is designed for taking care of your pet. '
                  'Fixe objectives based on their needs. See their progresses and '
                  'share them with the community.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 90, 89, 89),
                    height: 1.5,
                  ),
                ),
                // botao
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: const Color.fromARGB(255, 68, 126, 212),
                      elevation: 2,
                    ),
                    child: const Text(
                      "Let’s start",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
