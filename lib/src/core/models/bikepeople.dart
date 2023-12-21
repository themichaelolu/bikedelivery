import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:http/http.dart';

class BikePeople extends Equatable {
  String name;
  String image;
  String body;

  BikePeople({
    required this.name,
    required this.image,
    required this.body,
  });

  // static List<BikePeople> bikeImages = [
  //   BikePeople(
  //     name: 'Mike\'s Bike',
  //     image: 'assets/images/bike.png',
  //   ),
  //   BikePeople(
  //     name: 'Jay\'s Bike',
  //     image: 'assets/images/bike.png',
  //   ),
  //   BikePeople(
  //     name: 'Dan\'s Bike',
  //     image: 'assets/images/bike.png',
  //   ),
  //   BikePeople(
  //     name: 'Fred\'s Bike',
  //     image: 'assets/images/bike.png',
  //   ),
  //   BikePeople(
  //     name: 'Sasha\'s Bike',
  //     image: 'assets/images/bike.png',
  //   ),
  // ];
  factory BikePeople.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'title': String title,
        'body': String body,
      } =>
        BikePeople(
          name: title,
          image: 'assets/images/bike.png',
          body: body,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
  @override
  // TODO: implement props
  List<Object?> get props => [name, image];
}
