import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Yeow Ying Sheng",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            // Text(
            //   "Undergraduate, Nanyang Technological University\nComputer Science Year 3\nI love birds.",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 30,
            //   ),
            // ),
            SizedBox(
              width: 1000,
              height: 100,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Undergraduate, Nanyang Technological University\nComputer Science Year 3\nI love birds.",
                      speed: Duration(milliseconds: 45),
                    ),
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
