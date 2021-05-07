import 'package:flutter/material.dart';
import 'package:mywebflut/components/video.dart';
import 'package:mywebflut/components/youtube.dart';
import 'package:mywebflut/contact.dart';
import 'package:mywebflut/home_screen.dart';
import 'package:mywebflut/schFinderPage.dart';
import 'package:mywebflut/work_screen.dart';
import 'package:timelines/timelines.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //'/': (context) => HomeScreen(),
        '/projects': (context) => Work(),
        '/projects/schfinder': (context) => schFinderPage(),
        '/contact': (context) => Contact(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Ying Sheng',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

// Widget build(BuildContext context) {
//   return Timeline.tileBuilder(
//     builder: TimelineTileBuilder.fromStyle(
//       contentsAlign: ContentsAlign.alternating,
//       contentsBuilder: (context, index) => Padding(
//         padding: EdgeInsets.only(left: 100),
//         child: Text('Timeline Event $index'),
//       ),
//       itemCount: 10,
//     ),
//   );
// }
