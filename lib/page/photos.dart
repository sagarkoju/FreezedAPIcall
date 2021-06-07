import 'package:demo/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

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
                        final data = user.data;
                        return ListTile(
                          title: Text(data[index].title),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(data[index].url),
                          ),
                          subtitle: Text(data![index].id.toString()),
                        );
                      });
                });
          },
        ),
      ),
    );
  }
}
