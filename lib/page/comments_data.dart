import 'package:demo/user/user_controller.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Api Data Call from Freezed package'),
        centerTitle: true,
      ),
      body: Center(
        child: HookBuilder(
          builder: (context) {
            final data = useProvider(userController.state);
            return data.maybeMap(
                loading: (_) => const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
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
    );
  }
}