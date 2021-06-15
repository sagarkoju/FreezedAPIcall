import 'package:demo/color/app_color.dart';
import 'package:demo/model/user.dart';
import 'package:flutter/material.dart';

class DragScreen extends StatefulWidget {
  const DragScreen({Key? key}) : super(key: key);

  @override
  _DragScreenState createState() => _DragScreenState();
}

class _DragScreenState extends State<DragScreen> {
  final List<User> data = users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-1/p160x160/169393807_3769730173146153_1447273600101580803_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=7206a8&_nc_ohc=kkS0g92blZYAX-Sre9I&_nc_ht=scontent.fktm8-1.fna&tp=6&oh=605e5aab0a2dddae44d5ef2e028b6a30&oe=60CDF012",
            fit: BoxFit.cover,
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.0,
              maxChildSize: 0.9,
              builder: (context, controller) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: ListView.builder(
                    controller: controller,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final userdata = data[index];
                      return ListTile(
                        title: Text(
                          userdata.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: AppColor.textColor),
                        ),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                            userdata.urlAvatar,
                          ),
                        ),
                        trailing: Text(
                          userdata.age.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: AppColor.textColor),
                        ),
                        subtitle: Text(
                          userdata.gender,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: AppColor.textColor),
                        ),
                      );
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
