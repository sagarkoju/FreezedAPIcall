import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Future<Food> fetchdata() async {
//   final response = await http.get(Uri.parse(
//       'http://backend.quickbites.delivery/api/restaurant_food_list/94?fbclid=IwAR17F2cHG0aMJkuZPuomVdGMfKh_tf6sKatz0i3OkPdpgFdzGASPlIJCucg'));

//     List<Food> list = [];

//     try {
//       if (response.statusCode == 200) {
//         Map<String, dynamic> map = json.decode(response.body);

//         for (var map in map['foodlists']) {
//           list.add(Food(id: map['id'], name: map['name'], foodItems: map['fooditem']));
//         }
//       }
//     } catch (e, _) {
//       debugPrint(e.toString());
//     }
//     return fetchdata();

// }
class ApiService {
  List<Food> getData = [];

  Future<List<Food>> getDataModel() async {
    final res = await http.get(
      Uri.parse(
          "https://newweb.nepalstock.com/api/nots/securityDailyTradeStat/58"),
      headers: {
        'user-agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      },
    );

    getData = List.from(jsonDecode(res.body).map((e) => Food.fromJson(e)));
    return getData;
  }
}

class Food {
  final int id;

  final String name;

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'],
      name: json['name'],
    );
  }

  Food({required this.id, required this.name});
}
