import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:http/http.dart';

class BikePeople extends Equatable {
  String name;
  String image;

  BikePeople({
    required this.name,
    required this.image,
  });

  static List<BikePeople> bikeImages = [
    BikePeople(
      name: 'Mike\'s Bike',
      image: 'assets/images/bike.png',
    ),
    BikePeople(
      name: 'Jay\'s Bike',
      image: 'assets/images/bike.png',
    ),
    BikePeople(
      name: 'Dan\'s Bike',
      image: 'assets/images/bike.png',
    ),
    BikePeople(
      name: 'Fred\'s Bike',
      image: 'assets/images/bike.png',
    ),
    BikePeople(
      name: 'Sasha\'s Bike',
      image: 'assets/images/bike.png',
    ),
  ];

  @override
  // TODO: implement props
  List<Object?> get props => [name, image];

  factory BikePeople.fromJson(Map<String, dynamic> json) {
    return BikePeople(
      name: json['title'] ?? '',
      image: json['assets/images/bike.png'] ?? '',
    );
  }

  Future<List<BikePeople>> fetchData() async {
    final response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => BikePeople.fromJson(json)).toList();
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load data');
    }
  }
}
