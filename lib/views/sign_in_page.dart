import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eventus/views/welcome_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (
            Row(
              children: [
                SvgPicture.asset('assets/signup.svg')
              ],
            )
        ),
      ),
    );
  }
}
