// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../core/models/bikepeople.dart';

class SliderR extends StatefulWidget {
  final BikePeople bikePeople;
  const SliderR({Key? key, required this.bikePeople}) : super(key: key);

  @override
  State<SliderR> createState() => _SliderRState();
}

class _SliderRState extends State<SliderR> {
  late Future<BikePeople> futureBike;

  @override
  void initState() {
    super.initState();
    futureBike = _fetchDataFromApi();
  }

  Future<BikePeople> _fetchDataFromApi() async {
    try {
      return widget.bikePeople;
    } catch (error) {
      print('Error fetching data: $error');
      throw error; // Rethrow the error to handle it in the calling function
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<BikePeople>(
        future: futureBike,
        builder: (BuildContext context, AsyncSnapshot<BikePeople> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/details',
                    arguments: widget.bikePeople);
              },
              child: Container(
                width: 255,
                height: 265,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F6FB),
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(color: Colors.grey),
                ),
                child: Container(
                  width: 199,
                  height: 229,
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset('assets/images/bike.png',
                            fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              snapshot.data?.name ?? 'Default Title',
                              style: TextStyle(
                                  color: Color(0xFF092C4C),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
