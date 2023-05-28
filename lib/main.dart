import 'package:drive_alert/logo.dart';
import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      home: const Logoscreen(),
    );
  }
}

/*class Logoscreen extends StatelessWidget {
  const Logoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Center(
        child: Text(
          'DriveAlert',
          style: GoogleFonts.kaiseiTokumin(
              textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          )),
        ),
      )),
    );
  }
}*/

/*class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          // ignore: sized_box_for_whitespace
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Text(
              'DriveAlert',
              textAlign: TextAlign.center,
              style: GoogleFonts.kaiseiTokumin(
                  textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
        ));
  }
}*/