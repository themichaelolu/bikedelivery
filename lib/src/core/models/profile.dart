import 'package:equatable/equatable.dart';

class Profile extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const Profile({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  @override
  String toString() {
    return 'Profile{id: $id, firstName: $firstName, lastName: $lastName, emai: $email, password: $password,}';
  }

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        email,
        password,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    };
  }
}
