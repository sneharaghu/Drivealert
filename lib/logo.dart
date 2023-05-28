import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

import 'logo.dart';

class Logoscreen extends StatefulWidget {
  const Logoscreen({super.key});

  @override
  State<Logoscreen> createState() => _LogoscreenState();
}

class _LogoscreenState extends State<Logoscreen> {
  @override
  void initState() {
    gotoLogin();
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: Center(
            child: Text('DriveAlert',
                style: GoogleFonts.kaiseiTokumin(
                    textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ))),
          ),
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Loginscreen(),
    ));
  }
}
