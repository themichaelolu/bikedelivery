// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/src/features/widgets/recentrorders.dart';
import 'package:project1/src/features/widgets/trackwidget.dart';

import '../../core/models/recetorders.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Orders',
            style: TextStyle(
              color: Color(0xFF092C4C),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bell_fill,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'Hello, Good Morning!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF092C4C),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TrackingOrders(
              recentOrdersModel: RecentOrdersModel.recents[0],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'Tracking history',
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
            RecentOrders(
              recentOrders: RecentOrdersModel.recents[0],
            )
          ]),
        ));
  }
}
