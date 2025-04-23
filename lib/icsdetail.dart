import 'package:flutter/material.dart';

class ICDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Integrated Circuit (IC)")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/ic_image.png'), // Add an image for the IC
            SizedBox(height: 16),
            Text(
              "An Integrated Circuit (IC) is a set of electronic circuits on a small flat piece (or 'chip') of semiconductor material.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "ICs are used in a wide variety of applications, from simple logic gates to complex processors and microcontrollers.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
