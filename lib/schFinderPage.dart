import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mywebflut/components/app_bar.dart';
import 'package:mywebflut/components/body.dart';
import 'package:mywebflut/components/video.dart';
import 'package:mywebflut/work_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchSchFinder() async => await canLaunch(
        "https://github.com/dannyyys/Software-Engineering-project")
    ? await launch("https://github.com/dannyyys/Software-Engineering-project")
    : throw 'Could not launch';

class schFinderPage extends StatelessWidget {
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Work()),
                      // );
                      Navigator.pushNamed(
                        context,
                        '/projects',
                      );
                    },
                  )),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SizedBox(
                    width: 1000,
                    height: 100,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "schFinder Demo:",
                            speed: Duration(milliseconds: 45),
                          ),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ),
              ),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SizedBox(
                    height: 80,
                    width: 200,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25.0),
                        hoverColor: Colors.green,
                        onTap: _launchSchFinder,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Icons.send_rounded),
                              color: Colors.white,
                              iconSize: 50,
                              onPressed: _launchSchFinder,
                            ),
                            Text(
                              "Source code",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'Agne',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child:
                    Align(alignment: Alignment.centerLeft, child: VideoApp()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
