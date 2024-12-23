import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Zerbee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Zerbee ',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Zerbee is your go-to app for seamless grooming service bookings. '
                'Discover salons, beauty parlors, and grooming professionals near you, and book your slot with just a few taps. '
                'Simplify your self-care routine with Zerbee’s easy scheduling, personalized recommendations, and reliable service options.',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Text(
                'Zerbee is the ultimate app for effortless grooming service bookings. '
                'Whether you\'re in need of a salon, beauty parlor, or grooming expert, Zerbee helps you discover top-rated professionals in your area. '
                'With a few taps, you can schedule appointments at your convenience, all while enjoying personalized recommendations and a hassle-free experience. '
                'Simplify your self-care routine and make every grooming session a breeze with Zerbee’s easy-to-use platform.',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
