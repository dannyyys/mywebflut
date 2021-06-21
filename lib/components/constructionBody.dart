import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class constructionBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
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
                    TypewriterAnimatedText("Under construction...",
                        speed: Duration(milliseconds: 45)),
                  ],

                ),
              ),
              
            ),
    
          ],
        ),
      ),
    );
  }
}
