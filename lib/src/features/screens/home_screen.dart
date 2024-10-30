// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project1/src/core/models/bikepeople_network.dart';

import 'package:project1/src/features/widgets/drawer_widget.dart';
import 'package:project1/src/features/widgets/top_widget.dart';

import '../../core/models/bikepeople.dart';

import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/slider.dart';
import '../widgets/your_orders_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopWidget(scaffoldKey: _scaffoldKey),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
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
            height: 10,
          ),
          Consumer(
            builder: (context, ref, child) {
              return ref.watch(getDataProvider).when(
                    data: (data) {
                      return data != null
                          ? data.isEmpty
                              ? Center(
                                  child: Text('Empty'),
                                )
                              : CarouselSlider(
                                  options: CarouselOptions(
                                    aspectRatio: 1.5,
                                    // enlargeCenterPage: true,
                                    enableInfiniteScroll: false,
                                    initialPage: 2,
                                    viewportFraction: 0.7,
                                  ),
                                  items: data
                                      .map((bikeImages) =>
                                          SliderR(bikePeople: bikeImages))
                                      .toList(),
                                )
                          : Center(
                              child: Text('Error on loading data'),
                            ); 
                    },
                    error: (error, stackTrace) {
                      return Center(
                        child: Text(error.toString()),
                      );
                    },
                    loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
            },
          ),
          SizedBox(
            height: 20,
          ),
          YourOrdersWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 161,
                height: 161,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/riding.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 166,
                height: 36,
                child: Text(
                  'You too can join our Elite squad of E-bikers',
                  style: TextStyle(
                    color: Color(0xFF414141),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    letterSpacing: 0.50,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
