// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project1/src/core/models/bikepeople.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project1/src/features/widgets/bottomnavbar.dart';
import 'package:project1/src/features/widgets/slider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final BikePeople data =
        ModalRoute.of(context)!.settings.arguments as BikePeople;
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        appBar: AppBar(
          title: Text(
            data.name,
            style: const TextStyle(
              color: Color(0xFF092C4C),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.7,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enlargeCenterPage: true,
            ),
            items: [
              SliderR(bikePeople: data),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  margin: EdgeInsets.all(5),
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: Text(
                        data.name,
                        style: const TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Inter'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Product Description',
                style: const TextStyle(
                  color: Color(0xFF092C4C),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    data.body,
                    style: TextStyle(
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: 'Inter'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Delivery Information',
                style: TextStyle(
                  color: Color(0xFF092C4C),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'fdvdbkj vevhvsj s veiv jfh svbfffsbsbsvhebs  vsbvbvsbvsvbfv vsbvvbsbvsbvsbvsvvb vbsjkvbsvsvbwfbsjvbvsv  svbsjbvsvsv skvbsvs vskvsv ksv svksjvbks svksv v',
                    style: TextStyle(fontSize: 13, fontFamily: 'Inter'),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
