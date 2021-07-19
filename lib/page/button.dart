import 'package:demo/Widget/button_widget.dart';

import 'package:demo/page/todo.dart';
import 'package:demo/route/apps_router.dart';
import 'package:flutter/material.dart';

class ButtonScreenPage extends StatelessWidget {
  const ButtonScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                  text: 'Photos',
                  onpressed: () {
                    context.router.push(HomePageRoute());
                  }),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                  text: 'Commets',
                  onpressed: () {
                    context.router.push(CommentRoute());
                  }),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                  text: 'Shimmer effect',
                  onpressed: () {
                    context.router.push(ShimmerRoute());
                  }),
              ButtonWidget(
                  text: 'Text Overflow',
                  onpressed: () {
                    context.router.push(TextOverflowRoute());
                  }),
              ButtonWidget(
                  text: 'Login Form',
                  onpressed: () {
                    context.router.push(LoginRoute());
                  }),
              ButtonWidget(
                  text: 'Silver app bar',
                  onpressed: () {
                    context.router.push(SilverAppBarRoute());
                  }),
              ButtonWidget(
                  text: 'Stepper',
                  onpressed: () {
                    context.router.push(SteppeRoute());
                  }),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                  text: 'Todo',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TodoScreen()));
                  }),
              ButtonWidget(
                  text: 'FamilyPrimitive Modifier',
                  onpressed: () {
                    context.router.push(RiverpodRoute());
                  }),
              ButtonWidget(
                  text: 'Bottom Sheet',
                  onpressed: () {
                    showModalBottomSheet(
                        context: context,
                        elevation: 10,
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (ctx) {
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 04,
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-1/p160x160/169393807_3769730173146153_1447273600101580803_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=7206a8&_nc_ohc=lubkYOeF95YAX9pWW8-&_nc_ht=scontent.fktm8-1.fna&tp=6&oh=8077352798928eead86e2cebd994f0f8&oe=60E5AB12'),
                                  radius: 60,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Sagar Koju',
                                  textScaleFactor: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'BottomSheet is a built-in widget in Flutter. This widget is very useful in many situations, such as when you want to present some information, display a menu, show a form with text fields, etc.,',
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 05,
                                ),
                                Text(
                                  'Modal Bottom Sheet is an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app. ',
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          );
                        });
                  }),
              ButtonWidget(
                  text: 'Draggable ScrollableSheet',
                  onpressed: () {
                    context.router.push(DragRoute());
                  }),
              ButtonWidget(
                  text: 'Animated Icon',
                  onpressed: () {
                    context.router.push(AnimatedIconRoute());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
