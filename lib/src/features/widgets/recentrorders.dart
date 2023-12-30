// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project1/src/core/models/recetorders.dart';

class RecentOrders extends StatelessWidget {
  final RecentOrdersModel recentOrders;

  const RecentOrders({
    Key? key,
    required this.recentOrders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            final order = RecentOrdersModel.recents[index];
            return InkWell(
              onTap: () {
                if (!order.inProcess) {
                  context.push('/track', extra: recentOrders);
                }
              },
              child: ListTile(
                leading: Container(
                  width: 56,
                  height: 56,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF1F6FB),
                    shape: OvalBorder(),
                  ),
                  child: Center(
                    child: Text(
                      order.inProcess ? '📦' : '🚚',
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
                ),
                title: Text(order.name),
                subtitle: Text(order.inProcess ? 'In Process' : 'In Delivery'),
              ),
            );
          }),
          itemCount: RecentOrdersModel.recents.length,
        ),
      ),
    );
  }
}
