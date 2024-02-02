import 'package:equatable/equatable.dart';

class BikePeople extends Equatable {
  final String name;
  final String image;
  final String body;

  const BikePeople({
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
  List<Object?> get props => [name, image];
}
