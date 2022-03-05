import 'package:demo/Widget/custom_shimmer.dart';
import 'package:demo/application/users.dart';
import 'package:demo/user/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read(userController).getUserComment();
    });
    commentFilter = comment;
    super.initState();
  }

  List<Comment> comment = [];
  final TextEditingController nameController = TextEditingController();
  List<Comment> commentFilter = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
        title: Text('Api Data Call from Freezed package'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CupertinoSearchTextField(
              controller: nameController,
              placeholder: 'Search for the name',
              padding: EdgeInsets.all(10),
              onSubmitted: (String value) {
                setState(() {
                  commentFilter = comment
                      .where(
                        (e) =>
                            e.id
                                .toString()
                                .toLowerCase()
                                .contains(value.toLowerCase()) ||
                            e.name.toLowerCase().contains(
                                  value.toLowerCase(),
                                ),
                      )
                      .toList();
                });
              },
              onChanged: (String value) {
                setState(() {
                  commentFilter = comment
                      .where(
                        (e) =>
                            e.id
                                .toString()
                                .toLowerCase()
                                .contains(value.toLowerCase()) ||
                            e.name.toLowerCase().contains(
                                  value.toLowerCase(),
                                ),
                      )
                      .toList();
                  print(value);
                });
              }),
          Expanded(
            child: Center(
              child: HookBuilder(
                builder: (context) {
                  final data = useProvider(userController.state);
                  return data.maybeMap(
                      loading: (_) => ListView.separated(
                            itemBuilder: (context, index) {
                              return CustomShimmer(
                                  widget: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.grey,
                                ),
                              ));
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: Colors.red,
                              );
                            },
                            itemCount: 9,
                          ),
                      orElse: () => const SizedBox(),
                      success: (user) {
                        final circledata = user.data;

                        return ListView.separated(
                            itemBuilder: (context, index) {
                              final display = user.data;
                              return ListTile(
                                leading: CircleAvatar(
                                  child: Text(display[index].id.toString()),
                                ),
                                title: Text(display[index].email),
                                subtitle: Text(display[index].name),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: Colors.red,
                              );
                            },
                            itemCount: circledata.length);
                        // return ListView.builder(
                        //     itemCount: circledata.length,
                        //     itemBuilder: (context, index) {
                        //       final display = user.data;
                        //       return ListTile(
                        //         title: Text(display[index].email),
                        //         subtitle: Text(display[index].body),
                        //       );
                        //     });
                      });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
