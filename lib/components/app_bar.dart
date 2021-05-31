import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 5),
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
              Navigator.pushNamed(
                context,
                '/projects',
              );
            },
          ),
          MenuItem(
            title: "Contact",
            press: () {
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
