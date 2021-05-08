import 'package:flutter/material.dart';
import 'package:mywebflut/schFinderPage.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchEZstate() async =>
    await canLaunch("https://github.com/dannyyys/STARSfinal")
        ? await launch("https://github.com/dannyyys/STARSfinal")
        : throw 'Could not launch';

void _launchOodp() async =>
    await canLaunch("https://github.com/dannyyys/StarsPlannerFinal")
        ? await launch("https://github.com/dannyyys/StarsPlannerFinal")
        : throw 'Could not launch';

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              thickness: 10,
            ),
          ),
          TimelineTile(
            // oppositeContents: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text('opposite\ncontents'),
            // ),
            contents: Card(
              child: FittedBox(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      //link
                    },
                    child: Text(
                      'MySQL\nDatabase system for online shopping platform',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            node: TimelineNode(
              indicator: DotIndicator(
                size: 40,
              ),
              startConnector: SolidLineConnector(
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              thickness: 10,
            ),
          ),
          TimelineTile(
            oppositeContents: Card(
              child: FittedBox(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: _launchOodp,
                    child: Text(
                      'StarsPlanner\nCourse registration application',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // contents: Card(
            //   child: Container(
            //     padding: EdgeInsets.all(8.0),
            //     child: Text('contents'),
            //   ),
            // ),
            node: TimelineNode(
              indicator: DotIndicator(
                size: 40,
              ),
              startConnector: SolidLineConnector(
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              thickness: 10,
            ),
          ),
          TimelineTile(
            // oppositeContents: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text('opposite\ncontents'),
            // ),
            contents: FittedBox(
              child: Container(
                //alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 25),
                height: 100,
                width: 500,
                child: Material(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    hoverColor: Colors.green,
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => schFinderPage()),
                      // );
                      Navigator.pushNamed(
                        context,
                        '/projects/schfinder',
                      );
                    },
                    child: Text(
                      'schFinder\nSchool finding mobile application',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            node: TimelineNode(
              indicator: DotIndicator(
                size: 40,
              ),
              startConnector: SolidLineConnector(
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              thickness: 10,
            ),
          ),
          TimelineTile(
            oppositeContents: Card(
              child: FittedBox(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: _launchEZstate,
                    child: Text(
                      'EZstate\nProperty analysis forum',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // contents: Card(
            //   child: Container(
            //     padding: EdgeInsets.all(8.0),
            //     child: Text('contents'),
            //   ),
            // ),
            node: TimelineNode(
              indicator: DotIndicator(
                size: 40,
              ),
              startConnector: SolidLineConnector(
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: DecoratedLineConnector(
              thickness: 10,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.lightBlueAccent[100]],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
