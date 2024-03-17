import 'package:eventus/views/sign_in_page.dart';
import 'package:eventus/views/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFfcf3ea),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color(0xFFfcf3ea),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF954962),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView( // Wrap content in SingleChildScrollView
          child: Column( // Use Column for vertical layout
            children: [
              Row( // Row for logo and text
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: SvgPicture.asset('assets/logo.svg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 23),
                    child: Text(
                      "EVENTUS",
                      style: TextStyle(
                        color: Color(0xFF954962),
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              AspectRatio(
                aspectRatio: 359/810,
                child: Padding(
                  padding: const EdgeInsets.only(right: 0), // Add left padding
                  child: SvgPicture.asset('assets/welcome3.svg',
                       // Or BoxFit.contain as needed
                    ),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
                children: [
                  // Sign in button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()), // Replace SignInPage with your actual page
                      );
                    },
                    child: const Text('Sign in'),
                  ),
                  const SizedBox(width: 20), // Add some space between buttons
                  // Sign up button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()), // Replace SignUpPage with your actual page
                      );
                    },
                    child: const Text('Sign up'),
              )
            ],
          ),
          ]
        ),
      ),
      )
    );
  }
}
