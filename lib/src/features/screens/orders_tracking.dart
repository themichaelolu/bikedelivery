// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project1/src/core/models/recetorders.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/ordersnumber.dart';
import '../widgets/proddeliverydetails.dart';

class OrdersTracking extends StatefulWidget {
  final RecentOrdersModel? tracker;

  const OrdersTracking({
    super.key,
    required this.tracker,
  });

  @override
  State<OrdersTracking> createState() => _OrdersTrackingState();
}

class _OrdersTrackingState extends State<OrdersTracking> {
  final panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    // final data =
    //     ModalRoute.of(context)!.settings.arguments as RecentOrdersModel;

    final minPanelHeight = MediaQuery.of(context).size.height * 0.12;
    final maxPanelHeight = MediaQuery.of(context).size.height * 0.65;
    return Scaffold(
        backgroundColor: Color(0xFFE3E8EC),
        appBar: AppBar(
          backgroundColor: Color(0xFFE3E8EC),
          title: Text(
            'Tracking Details',
            style: TextStyle(
              fontFamily: 'Inter',
            ),
          ),
          centerTitle: true,
        ),
        body: SlidingUpPanel(
          controller: panelController,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(23),
          ),
          minHeight: minPanelHeight,
          maxHeight: maxPanelHeight,
          panelBuilder: (controller) => ProductDeliveryDetails(
            panelController: panelController,
            controller: controller,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                OrdersNumber(data: widget.tracker!),

                // Text(
                //   'Estimate arrives in',
                //   style: TextStyle(
                //     color: Color(0xFF7A809D),
                //     fontSize: 14,
                //     fontFamily: 'Inter',
                //     fontWeight: FontWeight.w400,
                //     letterSpacing: 0.50,
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(
                //   '2h 40m',
                //   style: TextStyle(
                //     color: Color(0xFF2E3E5C),
                //     fontSize: 24,
                //     fontFamily: 'Inter',
                //     fontWeight: FontWeight.w600,
                //     letterSpacing: 0.50,
                //   ),
                // ),

                // ProductDeliveryDetails(),

                // HistoryWidget(),
              ],
            ),
          ),
        ));
  }
}
