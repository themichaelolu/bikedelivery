// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/src/core/models/recetorders.dart';

class RecentOrders extends StatelessWidget {
  final RecentOrdersModel recentOrders;

  const RecentOrders({
    super.key,
    required this.recentOrders,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: ((context, index) => InkWell(
                onTap: () {
                  RecentOrdersModel.recents[index].inProcess == true
                      ? {}
                      : Navigator.of(context)
                          .pushNamed('/tracker', arguments: recentOrders);
                },
                child: ListTile(
                  leading: Container(
                    width: 56,
                    height: 56,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF1F6FB),
                      shape: OvalBorder(),
                    ),
                    child: RecentOrdersModel.recents[index].inProcess == true
                        ? Center(
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
                          )
                        : Center(
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
                  ),
                  title: Text(
                    RecentOrdersModel.recents[index].name,
                  ),
                  subtitle: RecentOrdersModel.recents[index].inProcess == true
                      ? Text('In Process')
                      : Text('In Delivery'),
                ),
              )),
          itemCount: RecentOrdersModel.recents.length,
        ),
      ),
    );
  }
}
