import 'package:flutter/material.dart';
import 'package:mywebflut/components/app_bar.dart';
import 'package:mywebflut/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
              "assets/images/ramon-salinero-vEE00Hx5d0Q-unsplash.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(),
            Body(),
            Spacer(
              flex: 2,
            ),
            Container(
                alignment: Alignment.center,
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    hoverColor: Colors.grey[800],
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    color: Colors.white,
                    iconSize: 60,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/projects',
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
