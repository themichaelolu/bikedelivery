import 'package:flutter/material.dart';

import '../../core/models/recetorders.dart';

class OrdersNumber extends StatelessWidget {
  const OrdersNumber({
    super.key,
    required this.data,
  });

  final RecentOrdersModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Center(
        child: Container(
          width: 327,
          height: 88,
          decoration: ShapeDecoration(
            color: Color(0xFFFFD337),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(46),
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(15),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: Color(0xFF051F32)),
                borderRadius: BorderRadius.circular(28),
              ),
            ),
            child: Center(
              child: Text(
                data.name,
                style: TextStyle(
                  color: Color(0xFF051F32),
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
      ),
    );
  }
}
