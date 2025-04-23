import 'package:flutter/material.dart';

class CapacitorDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Capacitor")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/capacitor_image.png'), // Add an image for the capacitor
            SizedBox(height: 16),
            Text(
              "Capacitor is a two-terminal electronic component that stores electrical energy in an electric field.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Capacitors are widely used in electronic circuits for filtering, energy storage, and voltage regulation.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
