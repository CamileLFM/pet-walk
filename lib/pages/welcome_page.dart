import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text( //titulo com sombras
                  'Pet Walk',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3575D3),
                    shadows: [
                      Shadow(
                        offset: Offset(0, 4),
                        blurRadius: 10,
                        color: Color(0x403575D3),
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
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
                // botao
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // colocar a proxima tela ao apertar o botao
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: const Color(0xFFF6F8FB),
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
