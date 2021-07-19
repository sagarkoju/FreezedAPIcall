import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Category> fetchData() async {
  final response = await http.get(Uri.parse(
      "http:backend.quickbites.delivery/api/restaurant_food_list/94?fbclid=IwAR39g5j_Ld7toQD4VapwDh5l1BAb2GmORnkVEpVJw6qQeBdS7YOqgtWWkzA"));
  if (response.statusCode == 200) {
    return Category.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load category');
  }
}

class Category {
  final String name;

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
    );
  }

  Category({required this.name});
}
