import 'package:flutter/material.dart';
import 'login.dart';
import 'details1.dart';
import 'emercon.dart';
import 'emerser.dart';
import 'mandev.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
          actions: [
            IconButton(
                onPressed: () {
                  signout(context);
                },
                icon: const Icon(Icons.exit_to_app)),
          ],
        ),
        body: SafeArea(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      const SizedBox(
                        height: 160,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            gotodetails(context);
                          },
                          icon: const Icon(Icons.list),
                          label: const Text(
                              '                Details                ')),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            gotoemercon(context);
                          },
                          icon: const Icon(Icons.phone),
                          label: const Text('    Emergency Contacts ')),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            gotoemerser(context);
                          },
                          icon: const Icon(Icons.medical_services_sharp),
                          label: const Text('    Emergency Services ')),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            gotomandev(context);
                          },
                          icon: const Icon(Icons.check_box_outline_blank),
                          label: const Text('       Manage Devices       ')),
                    ])))));
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => Loginscreen()), (route) => false);
  }

  void gotodetails(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (ctx1) => Detailsscreen()));
  }

  void gotoemercon(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (ctx1) => EmerConscreen()));
  }

  void gotoemerser(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (ctx1) => EmerSerscreen()));
  }

  void gotomandev(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (ctx1) => const ManDevscreen()));
  }
}
