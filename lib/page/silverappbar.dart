import 'dart:convert';
import 'dart:io';

import 'package:demo/model/dataapi.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SilverAppBarScreen extends StatefulWidget {
  @override
  _SilverAppBarWithTabBarState createState() => _SilverAppBarWithTabBarState();
}

class _SilverAppBarWithTabBarState extends State<SilverAppBarScreen>
    with SingleTickerProviderStateMixin {
  List food = [];
  List foodlist = [];

  getCountries() async {
    final response = await http.get(
      Uri.parse(
          'http://backend.quickbites.delivery/api/restaurant_food_list/94?fbclid=IwAR17F2cHG0aMJkuZPuomVdGMfKh_tf6sKatz0i3OkPdpgFdzGASPlIJCucg'),
      headers: {
        'user-agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      },
    );
    Map<String, dynamic> data =
        new Map<String, dynamic>.from(json.decode(response.body));
    return data;
  }

  TabController? controller;
  List<Widget> tabs = [
    TabViewList(title: 'Tab1'),
    TabViewList(title: 'Tab2'),
    TabViewList(title: 'Tab3'),
  ];

  @override
  void initState() {
    super.initState();
    getCountries().then((data) {
      setState(() {
        foodlist = food;
      });
    });
    controller = new TabController(length: foodlist.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  expandedHeight: 400.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("Collapsing Toolbar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          )),
                      background: Image.network(
                        "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
//
          ];
        },
        body: Container(
          child: ListView.builder(
              itemCount: foodlist.length,
              itemBuilder: (BuildContext context, int index) {
                return TabBar(
                    controller: controller,
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                     tabs: [],
                    );
              }),
        ),
      ),
    );
  }
}

class TabViewList extends StatefulWidget {
  final String? title;
  TabViewList({this.title});
  _TabViewListState createState() => _TabViewListState();
}

class _TabViewListState extends State<TabViewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        primary: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(Icons.access_alarm),
            leading: Icon(Icons.accessibility_new),
            title: Text('${widget.title}'),
            subtitle: Text("Flutter Tutorial"),
          );
        },
      ),
    );
  }
}
