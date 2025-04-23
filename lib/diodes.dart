import 'package:flutter/material.dart';

class DiodeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Diode")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/diode_image.png'), // Add an image for the diode
            SizedBox(height: 16),
            Text(
              "A Diode is a two-terminal electronic component that allows current to flow in only one direction.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Diodes are commonly used for rectification, voltage regulation, and protection in electronic circuits.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
