import 'package:flutter/material.dart';
import 'login.dart';

class Forgetscreen extends StatelessWidget {
  Forgetscreen({super.key});

  final _newpasswordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 215,
              ),
              TextFormField(
                controller: _newpasswordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter New Password'),
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                controller: _confirmpasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Confirm New Password'),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    gotohome(context);
                  },
                  icon: const Icon(Icons.check),
                  label: const Text('Confirm')),
            ],
          ),
        ),
      ),
    );
  }

  void gotohome(BuildContext ctx) {
    final _newpassword = _newpasswordController.text;
    final _confirmpassword = _confirmpasswordController.text;
    if (_newpassword == _confirmpassword) {
      //Go to Home
      Navigator.of(ctx)
          .push(MaterialPageRoute(builder: (ctx1) => Loginscreen()));
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
          const SnackBar(content: Text('Password doesnot match')));
    }
  }
}