import 'package:flutter/material.dart';
import 'package:mywebflut/components/app_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mywebflut/components/constructionBody.dart';

class Construction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/nasa-Q1p7bh3SHj8-unsplash.jpg"),
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Container(
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_arrow_up_rounded),
                    color: Colors.white,
                    iconSize: 60,
                    onPressed: () {
     
                      Navigator.pushNamed(
                      context,
                      '/projects',
                    );
                    },
                  )),
              //Spacer(),
              constructionBody(),
       
              
            ],
          ),
        ),
      ),
    );
  }
}
