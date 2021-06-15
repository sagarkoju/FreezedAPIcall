import 'package:demo/Widget/custom_shimmer.dart';
import 'package:demo/model/user.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<User> fetchUser(String username) async {
  await Future.delayed(Duration(milliseconds: 4000));
  return users.firstWhere((user) => user.name == username);
}

final userProvider = FutureProvider.family<User, String>((ref, username) async {
  return fetchUser(username);
});

class RiverpodScreen extends StatefulWidget {
  const RiverpodScreen({Key? key}) : super(key: key);

  @override
  _RiverpodScreenState createState() => _RiverpodScreenState();
}

class _RiverpodScreenState extends State<RiverpodScreen> {
  String username = users.first.name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('FamilyPrimitive Modifier'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              child: Consumer(builder: (context, watch, child) {
                final future = watch(userProvider(username));
                return future.when(
                  data: (user) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            backgroundImage: NetworkImage(user.urlAvatar),
                            radius: 80,
                          ),
                          const SizedBox(height: 24),
                          buildHeader(
                              'Name:', user.name), // Text("Name" + user.name)
                          const SizedBox(height: 8),
                          buildHeader('Age:', user.age.toString()),
                          const SizedBox(height: 8),
                          buildHeader('Gender:', user.gender),
                        ],
                      ),
                    );
                  },
                  loading: () => Column(
                    children: [
                      Expanded(
                        child: CustomShimmer(
                            widget: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomShimmer(
                          widget: Container(
                        width: 200,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      )),
                    ],
                  ),
                  error: (e, stack) => Center(child: Text('Not found')),
                );
              }),
            ),
            const SizedBox(
              height: 32,
            ),
            buildSearch(),
          ],
        ),
      ),
    );
  }

  Widget buildSearch() => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            buildUsernameDropdown(),
          ],
        ),
      );
  Widget buildUsernameDropdown() => Row(
        children: [
          Text(
            'Username',
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          DropdownButton<String>(
            value: username,
            style: TextStyle(fontSize: 20, color: Colors.black),
            onChanged: (value) => setState(() => username = value!),
            items: users
                .map((user) => user.name)
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                .toList(),
          ),
        ],
      );
  Widget buildHeader(String header, String value) => Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            Container(
              width: 120,
              child: Text(
                header,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 120,
              child: Text(
                value,
                style: TextStyle(fontSize: 24),
              ),
            ),
            Spacer(),
          ],
        ),
      );
}
