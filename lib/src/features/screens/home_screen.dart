// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:project1/src/features/widgets/drawer_widget.dart';
import 'package:project1/src/features/widgets/top_widget.dart';

import '../../core/models/bikepeople.dart';
import 'package:http/http.dart';
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
  List<BikePeople> _data = [];

  Future<List<BikePeople>> getData() async {
    try {
      final response = await get(
        Uri.parse(
          'https://jsonplaceholder.typicode.com/posts',
        ),
      );
      //   Map data = jsonDecode(response.body);

      // String title = data['title'];
      // String body = data['bofy'].substring(1, 3);

      // print(response.body);
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((json) => BikePeople.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      // print('Error fetching data: $error');
      rethrow; // Rethrow the error to handle it in the calling function
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchDataFromApi();
  }

  Future<void> _fetchDataFromApi() async {
    try {
      List<BikePeople> data = await getData();
      setState(() {
        _data = data;
      });
    } catch (error) {
      // Handle error more gracefully (e.g., show an error message to the user)
      // print('Error fetching data: $error');
    }
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
          _data.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.5,
                    // enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 2,
                    viewportFraction: 0.7,
                  ),
                  items: _data
                      .map((bikeImages) => SliderR(bikePeople: bikeImages))
                      .toList(),
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
