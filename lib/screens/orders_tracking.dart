// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project1/models/recetorders.dart';
import 'package:project1/widgets/history_widget.dart';

import '../widgets/ordersnumber.dart';
import '../widgets/proddeliverydetails.dart';

class OrdersTracking extends StatelessWidget {
  const OrdersTracking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as RecentOrdersModel;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tracking Details',
            style: TextStyle(
              fontFamily: 'Inter',
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              OrdersNumber(data: data),
              SizedBox(
                height: 10,
              ),
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
              SizedBox(
                height: 10,
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
              SizedBox(
                height: 10,
              ),
              ProductDeliveryDetails(),
              // HistoryWidget(),
            ],
          ),
        ));
  }
}
