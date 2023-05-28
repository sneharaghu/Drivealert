import 'package:flutter/material.dart';
import 'home.dart';
import 'forget.dart';
import 'signup.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  final _UsernameController = TextEditingController();
  final _PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 240,
              ),
              TextFormField(
                controller: _UsernameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _PasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    gotoforget(context);
                  },
                  child: Text('Forgotten Password?')),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    checkLogin(context);
                  },
                  icon: const Icon(Icons.check),
                  label: const Text('Login')),
              SizedBox(
                height: 120,
              ),
              TextButton(
                  onPressed: () {
                    gotosignup(context);
                  },
                  child: Text('Dont have an Account? SignUp')),
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final _username = _UsernameController.text;
    final _password = _PasswordController.text;
    if (_username == _password) {
      //Go to Home
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => Homescreen()));
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(content: Text('Username and Password doesnot match')));
    }
  }

  void gotoforget(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (ctx1) => Forgetscreen()));
  }

  void gotosignup(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (ctx1) => Signupscreen()));
  }
}