import 'package:demo/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read(userController).getUserTodo();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Api Data Call from Freezed'),
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
                  return ListView.builder(
                      itemCount: user.data!.length,
                      itemBuilder: (context, index) {
                        final datadisplay = user.data;
                        return ListTile(
                          title: Text(datadisplay[index].title),
                          leading: CircleAvatar(
                            child: Text(datadisplay[index].id.toString()),
                          ),
                          // subtitle: Text(datadisplay[index].completed),
                        );
                      });
                });
          },
        ),
      ),
    );
  }
}
