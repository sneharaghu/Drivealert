import 'package:flutter/material.dart';

class ManDevscreen extends StatelessWidget {
  const ManDevscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
           
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(80, 60, 60, 20),
                    child: Column(children: [
                      SizedBox(
                        height: 150,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            submit(context);
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('Open')),
                      SizedBox(
                        width: 60,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            submit(context);
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('Close')),
                           SizedBox(
                        height: 150,),
                        ElevatedButton.icon(
                          onPressed: () {
                            submit(context);
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('BUZZER OFF')),
                          SizedBox(
                        height: 10,),
                        ElevatedButton.icon(
                          onPressed: () {
                            submit(context);
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('Motor On')),
                          SizedBox(
                        width: 10,),
                        ElevatedButton.icon(
                          onPressed: () {
                            submit(context);
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('Motor Off')),

                    ]))));
  }

  void submit(BuildContext ctx) {}
}
