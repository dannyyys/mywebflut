import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class timeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            SizedBox(
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
                    TypewriterAnimatedText("Past projects:",
                        speed: Duration(milliseconds: 45)),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
