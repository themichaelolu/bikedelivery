// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/bikepeople.dart';

class SliderR extends StatefulWidget {
  final BikePeople bikePeople;
  const SliderR({super.key, required this.bikePeople});

  @override
  State<SliderR> createState() => _SliderRState();
}

class _SliderRState extends State<SliderR> {
  List<BikePeople> _data = BikePeople.bikeImages;

  Future<void> fetchDataFromApi() async {
    BikePeople instance =
        BikePeople(name: 'title', image: BikePeople.bikeImages[0].image);
    try {
      List<BikePeople> data = await instance.fetchData();
      setState(() {
        _data = data;
      });
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDataFromApi();
  }

  Widget build(BuildContext context) {
    return _data.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
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
                      Image.asset(widget.bikePeople.image,
                          fit: BoxFit.cover, width: 1000.0),
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
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            widget.bikePeople.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
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
