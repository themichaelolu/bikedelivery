import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 708,
      child: Stack(
        children: [
          Positioned(
            left: 24,
            top: 388,
            child: Container(
              width: 327,
              height: 280,
              child: Stack(
                children: [
                  Positioned(
                    left: 28,
                    top: 76,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 177,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.50,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFDFE6ED),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      'History',
                      style: TextStyle(
                        color: Color(0xFF2E3E5C),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 224,
                    child: Container(
                      width: 327,
                      height: 56,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 72,
                            top: 4,
                            child: Container(
                              width: 255,
                              height: 49,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 25,
                                    child: SizedBox(
                                      width: 148,
                                      child: Text(
                                        'Sukabumi, Indonesia',
                                        style: TextStyle(
                                          color: Color(0xFF7A809D),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 199,
                                    top: 13,
                                    child: SizedBox(
                                      width: 56,
                                      child: Text(
                                        '19.00 PM',
                                        style: TextStyle(
                                          color: Color(0xFF7A809D),
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.17,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text(
                                      'Send Form Sukabumi',
                                      style: TextStyle(
                                        color: Color(0xFF1E3354),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: 0.28,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF1F6FB),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 16,
                                    child: Text(
                                      '📦',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.04,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 136,
                    child: Container(
                      width: 327,
                      height: 56,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 72,
                            top: 4,
                            child: Container(
                              width: 255,
                              height: 49,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 25,
                                    child: SizedBox(
                                      width: 134,
                                      child: Text(
                                        'Jakarta, Indonesia',
                                        style: TextStyle(
                                          color: Color(0xFF7A809D),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 199,
                                    top: 13,
                                    child: SizedBox(
                                      width: 56,
                                      child: Text(
                                        '21.00 PM',
                                        style: TextStyle(
                                          color: Color(0xFF7A809D),
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.17,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text(
                                      'Transit - Sending City',
                                      style: TextStyle(
                                        color: Color(0xFF1E3354),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: 0.28,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFF1F6FB),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 16,
                                    child: Text(
                                      '📬',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.04,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 48,
                    child: Container(
                      width: 327,
                      height: 56,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 72,
                            top: 4,
                            child: Container(
                              width: 255,
                              height: 49,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 25,
                                    child: SizedBox(
                                      width: 148,
                                      child: Text(
                                        'Bali, Indonesia',
                                        style: TextStyle(
                                          color: Color(0xFF7A809D),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 193,
                                    top: 13,
                                    child: SizedBox(
                                      width: 62,
                                      child: Text(
                                        '00.00 PM',
                                        style: TextStyle(
                                          color: Color(0xFF7A809D),
                                          fontSize: 12,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.17,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text(
                                      'In Delivery',
                                      style: TextStyle(
                                        color: Color(0xFF1E3354),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: 0.28,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 56,
                              height: 56,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFFD337),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 16,
                                    child: Text(
                                      '🚚',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.04,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 351,
            top: 59,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(3.14),
              child: Container(
                width: 24,
                height: 24,
                child: Stack(children: []),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 45,
            child: Container(
              width: 132,
              height: 51,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 27,
                    child: Text(
                      '2h 40m',
                      style: TextStyle(
                        color: Color(0xFF2E3E5C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.04,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 132,
                      child: Text(
                        'Estimate arrives in',
                        style: TextStyle(
                          color: Color(0xFF7A809D),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 126,
            child: Container(
              width: 327,
              height: 238,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 327,
                      height: 238,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFD337),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 24,
                    child: Container(
                      width: 207,
                      height: 42,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 27,
                            child: SizedBox(
                              width: 207,
                              child: Text(
                                'No receipt : SCP6653728497',
                                style: TextStyle(
                                  color: Color(0xFF95823C),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Sukabumi, Indonesia',
                              style: TextStyle(
                                color: Color(0xFF2E3E5C),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 98,
                    child: Container(
                      width: 77,
                      height: 42,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 27,
                            child: SizedBox(
                              width: 72,
                              child: Text(
                                'Postal fee',
                                style: TextStyle(
                                  color: Color(0xFF95823C),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              '2,50 USD',
                              style: TextStyle(
                                color: Color(0xFF2E3E5C),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 172,
                    child: Container(
                      width: 119,
                      height: 42,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 27,
                            child: SizedBox(
                              width: 90,
                              child: Text(
                                'Parcel, 24kg',
                                style: TextStyle(
                                  color: Color(0xFF95823C),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Bali, Indonesia',
                              style: TextStyle(
                                color: Color(0xFF2E3E5C),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 163,
            top: 16,
            child: Container(
              width: 48,
              height: 5,
              decoration: ShapeDecoration(
                color: Color(0xFFDBE2E9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
