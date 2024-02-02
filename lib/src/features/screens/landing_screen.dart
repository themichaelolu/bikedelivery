// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Image.asset('assets/illustrations/group1.png'),
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome to E-Bikes',
              style: TextStyle(
                color: Color(0xFF041C2E),
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.06,
                letterSpacing: 0.48,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 304,
              child: Text(
                'Buying Electric bikes just got a lot easier,',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF95823C),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                  letterSpacing: 0.50,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 304,
              child: Text(
                'Try us today.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF95823C),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                  letterSpacing: 0.50,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 50,
              height: 6,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: ShapeDecoration(
                        color: Color(0xFF02131E),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 22,
                    top: 0,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 44,
                    top: 0,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // Navigator.pushNamed(context, '/login');
                context.push('/login');
              },
              child: Container(
                width: 327,
                height: 56,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                ),
                child: Center(
                  child: Text(
                    'LOG IN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
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
            )
          ],
        ),
      ),
    );
  }
}
