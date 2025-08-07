import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],

            begin: Alignment.centerLeft,

            end: Alignment.centerRight,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Start Screen!', style: TextStyle(fontSize: 24, color: Colors.white)),

              const SizedBox(height: 20),

              Image(
                image: AssetImage('assets/first.png'),
                width: 200,
                // color: const Color.fromARGB(150, 255, 255, 255),
              ),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: () {
                  // Navigate to the next screen
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),

                icon: Icon(
                  Icons.arrow_right_alt,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                
                label: const Text(
                  'Go to the next screen...',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
