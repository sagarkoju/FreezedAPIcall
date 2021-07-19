import 'package:demo/model/dataapi.dart';
import 'package:flutter/material.dart';

class SilverAppBarScreen extends StatefulWidget {
  @override
  _SilverAppBarWithTabBarState createState() => _SilverAppBarWithTabBarState();
}

class _SilverAppBarWithTabBarState extends State<SilverAppBarScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  List<Widget> tabs = [
    TabViewList(title: 'Tab1'),
    TabViewList(title: 'Tab2'),
    TabViewList(title: 'Tab3'),
  ];
  Future<Food>? foodlist;
  @override
  void initState() {
    super.initState();
    foodlist = fetchdata();
    controller =
        new TabController(length: foodlist!.toString().length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: foodlist,
      builder: (c, s) {
        if (s.hasData) {
          List<Tab> tabs = <Tab>[];

          for (int i = 0; i < s.data.toString().length; i++) {
            tabs.add(Tab(
              child: Text(
                 s.data.foodlist[i].name,
                style: TextStyle(color: Colors.white),
              ),
            ));
          }
          
        }
         return DefaultTabController(
            length: foodlist.toString().length,
            child: Scaffold(
              body: NestedScrollView(
                physics: BouncingScrollPhysics(),
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                      sliver: SliverSafeArea(
                        top: false,
                        sliver: SliverAppBar(
                          expandedHeight: 200.0,
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
                  child: TabBar(
                      controller: controller,
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: tabs),
                ),
              ),
            ),
          
        );
      },
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
