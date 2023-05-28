import 'package:flutter/material.dart';

class Details2screen extends StatelessWidget {
  Details2screen({super.key});
  final _addrsController = TextEditingController();
  final _dobController = TextEditingController();
  final _genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: [
                  SizedBox(
                    height: 150,
                  ),
                  TextFormField(
                    controller: _addrsController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Address'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _dobController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'DOB'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _genderController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Gender (F/M/Others)'),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        submit(context);
                      },
                      icon: const Icon(Icons.check),
                      label: const Text('Submit')),
                ]))));
  }

  void submit(BuildContext ctx) {}
}