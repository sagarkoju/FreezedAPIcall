import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerScreen extends StatelessWidget {
  const ShimmerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer effect'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shimmer.fromColors(
                child: Text(
                  'Sagar Koju',
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: Colors.red,
                      ),
                ),
                baseColor: Colors.grey,
                highlightColor: Colors.green),
            SizedBox(
              height: 20,
            ),
            Shimmer.fromColors(
                child: Image.network(
                    'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/169393807_3769730173146153_1447273600101580803_n.jpg?_nc_cat=109&_nc_rgb565=1&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=Iw38gHkSWT4AX-R1_L-&_nc_ht=scontent.fktm8-1.fna&oh=2d554f168e46cdd46d8f3af547ac83fa&oe=60E5B73F'),
                baseColor: Colors.grey,
                highlightColor: Colors.green),
          ],
        ),
      ),
    );
  }
}
