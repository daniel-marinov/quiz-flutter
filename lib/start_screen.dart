import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    required this.startQuiz,
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  backgroundColor: Colors.deepPurple),
              label: const Text(
                'Start quiz',
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(Icons.play_arrow, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
