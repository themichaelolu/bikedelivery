// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:project1/models/bikepeople.dart';

// class CarouselBike extends StatelessWidget {
//   final BikePeople bikePeople;

//   const CarouselBike({super.key, required this.bikePeople});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//               width: 255,
//               height: 265,
//               decoration: BoxDecoration(
//                 color: Color(0xFFF1F6FB),
//                 borderRadius: BorderRadius.circular(32),
//                 border: Border.all(color: Colors.grey),
//               ),
//               child: Container(
//                 width: 199,
//                 height: 229,
//                 margin: EdgeInsets.all(5.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                   child: Stack(
//                     children: <Widget>[
//                       Image.asset('assets/images/bike.png',
//                           fit: BoxFit.cover, width: 1000.0),
//                       Positioned(
//                         bottom: 0.0,
//                         left: 0.0,
//                         right: 0.0,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 20.0),
//                           child: Text(
//                             snapshot.data?.name ?? '',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 17.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//   }
// }
