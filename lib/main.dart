import 'package:eventus/views/main_page.dart';
import 'package:eventus/views/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
        theme: ThemeData
    (
        textTheme: GoogleFonts.signikaTextTheme(Theme.of(context).textTheme),
    ),
    title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}