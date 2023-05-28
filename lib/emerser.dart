import 'package:flutter/material.dart';
import 'home.dart';

class EmerSerscreen extends StatelessWidget {
  EmerSerscreen({super.key});
  final _policeController = TextEditingController();
  final _ambController = TextEditingController();
  final _hospController = TextEditingController();
  final _ffController = TextEditingController();
  final _ppController = TextEditingController();
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
                    controller: _policeController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        hintText: 'Police'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _ambController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        hintText: 'Ambulance'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _hospController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        hintText: 'Hospital'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _ffController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        hintText: 'Fireforce'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _ppController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        hintText: 'PinkPolice'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        back(context);
                      },
                      icon: const Icon(Icons.check),
                      label: const Text('Back')),
                ]))));
  }

  void back(BuildContext ctx) {
    Navigator.of(ctx)
        .pushReplacement(MaterialPageRoute(builder: (ctx1) => Homescreen()));
  }
}
