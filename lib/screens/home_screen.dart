// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/models/bikepeople.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project1/widgets/carousel_slider.dart';
import 'package:project1/widgets/your_orders_widget.dart';
import 'package:http/http.dart';

import '../widgets/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell_fill,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 0,
              viewportFraction: 0.7,
            ),
            items: BikePeople.bikeImages
                .map((bikeImages) => SliderR(bikePeople: bikeImages))
                .toList(),
          )),
          SizedBox(
            height: 30,
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
