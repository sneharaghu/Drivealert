import 'package:flutter/material.dart';
import 'home.dart';

class EmerConscreen extends StatelessWidget {
  EmerConscreen({super.key});
  final _phnController = TextEditingController();
  final _relationController = TextEditingController();

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
                    controller: _phnController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone number1'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _relationController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Relation'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _phnController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone number2'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _relationController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Relation'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _phnController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Phone number3'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _relationController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Relation'),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        submit(context);
                      },
                      icon: const Icon(Icons.check),
                      label: const Text('Submit')),
                ]))));
  }

  void submit(BuildContext ctx) {
    Navigator.of(ctx)
        .pushReplacement(MaterialPageRoute(builder: (ctx1) => Homescreen()));
  }
}
