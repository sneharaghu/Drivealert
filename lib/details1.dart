import 'package:flutter/material.dart';
import 'home.dart';
import 'details2.dart';

class Detailsscreen extends StatelessWidget {
 Detailsscreen({super.key});
  final _nameController = TextEditingController();
  final _phnController = TextEditingController();
  final _emailController = TextEditingController();
  final _bgrpController = TextEditingController();
  final _vnoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: [
                  SizedBox(
                    height: 100,
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter Name'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _phnController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Phone number'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: ' Email address'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _bgrpController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: ' Blood group'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _vnoController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Vehicle number'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        gotonext(context);
                      },
                      icon: const Icon(Icons.check),
                      label: const Text('Next')),
                ]))));
  }

  void gotonext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx1) => Details2screen()));
  }
}