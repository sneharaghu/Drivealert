import 'package:flutter/material.dart';
import 'home.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({super.key});

  final _nameController = TextEditingController();
  final _emailaddressController = TextEditingController();
  final _passwordController = TextEditingController();
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
                height: 160,
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
                controller: _emailaddressController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email Addresss'),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter Password'),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _confirmpasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Confirm Password'),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    gotohome(context);
                  },
                  icon: const Icon(Icons.check),
                  label: const Text('Sign Up')),
            ],
          ),
        ),
      ),
    );
  }

  void gotohome(BuildContext ctx) {
    final _password = _passwordController.text;
    final _confirmpassword = _confirmpasswordController.text;
    if (_password == _confirmpassword) {
      //Go to Home
      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => const Homescreen()));
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
          const SnackBar(content: Text('Passwords doesnot match')));
    }
  }
}