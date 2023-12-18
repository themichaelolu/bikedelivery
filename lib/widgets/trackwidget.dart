// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/models/recetorders.dart';

class TrackingOrders extends StatelessWidget {
  final RecentOrdersModel recentOrdersModel;
  const TrackingOrders({
    super.key,
    required this.recentOrdersModel,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 327,
        height: 308,
        decoration: ShapeDecoration(
          color: Color(0xFFFFD337),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'Track Your Package',
                style: TextStyle(
                  color: Color(0xFF031725),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.07,
                  letterSpacing: 0.50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 251,
                child: Text(
                  'Enter the receipt number that has been given by the officer',
                  style: TextStyle(
                    color: Color(0xFF95823C),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 279,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(
                    color: Color(0xFF031420),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Enter the receipt number',
                    style: TextStyle(
                      color: Color(0xFF031420),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 279,
                height: 56,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                ),
                child: InkWell(
                  // onTap: () {
                  //   Navigator.pushNamed(
                  //     context,
                  //     '/tracker',
                  //   );
                  // },
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
                          'Track Now',
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
