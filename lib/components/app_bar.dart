import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';
import 'package:mywebflut/components/timeline.dart';
import 'package:mywebflut/components/video.dart';
import 'package:mywebflut/components/youtube.dart';
import 'package:mywebflut/contact.dart';
import 'package:mywebflut/home_screen.dart';

import 'package:mywebflut/work_screen.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          //color: Colors.white.withOpacity(0.9),
          ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 5),
          // FlatButton(
          //   color: Colors.white,
          //   child: Text('Pop!'),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {
              //
              Navigator.pushNamed(
                context,
                '/',
              );
            },
          ),
          MenuItem(
            title: "Projects",
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Work()),
              // );
              Navigator.pushNamed(
                context,
                '/projects',
              );
            },
          ),
          MenuItem(
            title: "Contact",
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Contact()),
              // );
              Navigator.pushNamed(
                context,
                '/contact',
              );
            },
          )
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  const MenuItem({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.transparent,
      child: InkWell(
        hoverColor: Colors.grey[800],
        borderRadius: BorderRadius.circular(25.0),
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
