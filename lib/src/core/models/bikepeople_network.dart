import 'dart:convert';

import 'package:project1/src/core/models/bikepeople.dart';
import 'package:http/http.dart'  as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bikepeople_network.g.dart';


@riverpod


Future<List<BikePeople>?>? getData(ref) async {
    try {
      final response = await http.get(
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