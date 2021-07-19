import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Food> fetchdata() async {
  final response = await http.get(Uri.parse(
      'http://backend.quickbites.delivery/api/restaurant_food_list/94?fbclid=IwAR17F2cHG0aMJkuZPuomVdGMfKh_tf6sKatz0i3OkPdpgFdzGASPlIJCucg'));

  if (response.statusCode == 200) {
    return Food.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Food {
  final int id;
  final List foodItems;
  final String name;

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      foodItems: json['foodItems'],
      id: json['id'],
      name: json['name'],
    );
  }

  Food({required this.id, required this.foodItems, required this.name});
}
