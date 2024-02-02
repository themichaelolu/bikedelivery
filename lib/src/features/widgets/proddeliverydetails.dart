// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project1/src/features/widgets/timeline_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProductDeliveryDetails extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;
  const ProductDeliveryDetails({
    super.key,
    required this.controller,
    required this.panelController,
  });

  @override
  Widget build(BuildContext context) {
    void togglePanel() => panelController.isPanelOpen
        ? panelController.close()
        : panelController.open();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: togglePanel,
              child: Center(
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
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimate arrives in',
                      style: TextStyle(
                        color: Color(0xFF7A809D),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.50,
                      ),
                    ),
                    Text(
                      '2h 40m',
                      style: TextStyle(
                        color: Color(0xFF2E3E5C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
            ),
            SizedBox(
              height: 20,
            ),
            Text(
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
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.285,
              child: ListView(
                children: [
                  TimelineWidget(
                    isFirst: true,
                    isLast: false,
                    isPast: true,
                    indicatorWidget: Text(
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
                    eventCardTextTitle: Text(
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
                    eventCardTextLocation: Text(
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
                    eventCardTextTime: Text(
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
                  TimelineWidget(
                    isFirst: false,
                    isLast: false,
                    isPast: false,
                    indicatorWidget: Text(
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
                    eventCardTextTitle: Text(
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
                    eventCardTextLocation: Text(
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
                    eventCardTextTime: Text(
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
                  TimelineWidget(
                    isFirst: false,
                    isLast: true,
                    isPast: false,
                    indicatorWidget: Text(
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
                    eventCardTextLocation: Text(
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
                    eventCardTextTime: Text(
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
                    eventCardTextTitle: Text(
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
            )
          ],
        ),
      ),
    );
  }
}
