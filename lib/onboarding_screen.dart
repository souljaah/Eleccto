import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
      {
        'image': 'lib/assets/5.png',
        'title': 'Welcome to ElectroLex',
        'description':
        'This is your complete electronics guide. Learn, search, and explore components effortlessly!',
      },
      {
        'image': 'lib/assets/6.jpg',
        'title': 'Explore Components',
        'description':
        'Dive into a rich library of electronic parts—resistors, capacitors, ICs, and more—organized for quick access and in-depth learning.',
      },
      {
        'image': 'lib/assets/7.jpg',
        'title': 'Learn and Compare',
        'description':
        'Understand how components work, view detailed specs, and compare features to make smart electronics decisions.',
      },
  ];

  void _finishOnboarding() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    final data = onboardingData[currentIndex];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: TextButton(
                  onPressed: _finishOnboarding,
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(data['image']!, height:250),
                  SizedBox(height: 4),
                  Text(
                    data['title']!,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  Text(
                    data['description']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(onboardingData.length, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: currentIndex == index ? 24 : 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Colors.blueAccent
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (currentIndex == onboardingData.length - 1) {
                  _finishOnboarding();
                } else {
                  setState(() => currentIndex++);
                }
              },
              child: Text(
                currentIndex == onboardingData.length - 1
                    ? "Get Started"
                    : "Next",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}