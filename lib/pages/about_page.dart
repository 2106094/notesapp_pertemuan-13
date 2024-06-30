import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/images/test.txt');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About app",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50, // ukuran gambar
              backgroundImage: AssetImage('assets/images/profile.jpg'), 
            ),
            SizedBox(height: 20), 
            Text(
              "Irfan Nurhakim",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Mobile Developer",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text("itg.ac.id © 2024"),
          ],
        ),
      ),
    );
  }
}
