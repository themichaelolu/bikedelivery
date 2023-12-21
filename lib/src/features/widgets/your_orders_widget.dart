// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class YourOrdersWidget extends StatelessWidget {
  const YourOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 109,
      decoration: BoxDecoration(color: Color(0xFFFFD337)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 106,
            height: 36,
            child: Text(
              'Gotten your\nE-Bike yet?\n',
              style: TextStyle(
                color: Color(0xFF95823C),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height:
                    1.3, // Adjust this value to control the space between lines
                letterSpacing: 0.50,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/orders');
              // context.go('/orders');
            },
            child: Container(
              width: 183,
              height: 56,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(52),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Your Orders',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0.12,
                      letterSpacing: 0.50,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
