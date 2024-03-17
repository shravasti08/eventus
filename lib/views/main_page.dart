import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eventus/views/welcome_page.dart'; // Import WelcomePage

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFfcf3ea),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/logo.svg', // Update the path to your SVG file
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
            ),
            const SizedBox(width: 10),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                  child: Text(
                  "EVENTUS",
                  style: TextStyle(
                    color: Color(0xFF954962),
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
                Padding(
                  padding: EdgeInsets.only(left: 0, right: 3),
                  child: Text(
                    "think events, think Eventus",
                    style: TextStyle(
                      color: Color(0xFF954962),
                      fontSize: 18.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF954962),
          onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WelcomePage()),);},

          child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFfcf3ea),
          ),
          ),
      ),
    );
  }
}
