import 'package:flutter/material.dart';

class ProductDeliveryDetails extends StatelessWidget {
  const ProductDeliveryDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 238,
      decoration: ShapeDecoration(
        color: Color(0xFFFFD337),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: ListView(
          children: [
            ListTile(
              title: Text(
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
              subtitle: SizedBox(
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
            ListTile(
              title: Text(
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
              subtitle: SizedBox(
                width: 207,
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
            ListTile(
              title: Text(
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
              subtitle: SizedBox(
                width: 207,
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
          ],
        ),
      ),
    );
  }
}
