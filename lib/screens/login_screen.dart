// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'LOG IN',
            style: TextStyle(fontFamily: 'Inter'),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                height: 100,
                width: 326,
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'E-MAIL',
                    labelStyle: TextStyle(fontFamily: 'Inter'),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                width: 326,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(fontFamily: 'Inter')),
                ),
              ),
              GestureDetector(
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  bool _isValidData() {
                    String validUsername = 'michaelolorundare@gmail.com';
                    String validPassword = 'Funkyman';

                    return usernameController.text == validUsername &&
                        passwordController.text == validPassword;
                  }

                  if (_isValidData()) {
                    Navigator.pushReplacementNamed(context, '/home');
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Invalid email/password'),
                        content:
                            Text('Please enter the correct email or password.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Container(
                  width: 327,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'LOG IN',
                      style: TextStyle(fontSize: 15, fontFamily: 'Inter'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'OR',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF9D9D9D),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Login(),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 239,
                height: 25,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Don’t have any account?',
                        style: TextStyle(
                          color: Color(0xFF95823C),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.13,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 183,
                      top: 0,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF031522),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0.13,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
