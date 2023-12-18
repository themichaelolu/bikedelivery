// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project1/models/bikepeople.dart';

class CarouselBike extends StatelessWidget {
  final BikePeople bikePeople;

  const CarouselBike({super.key, required this.bikePeople});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: 265,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Color(0xFFF1F6FB),
      ),
      child: Container(
        width: 199,
        height: 229,
        // margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  bikePeople.image,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //     colors: [
                    //       Color.fromARGB(200, 0, 0, 0),
                    //       Color.fromARGB(0, 0, 0, 0)
                    //     ],
                    //     begin: Alignment.bottomCenter,
                    //     end: Alignment.topCenter,
                    //   ),
                    // ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      bikePeople.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
