import 'package:flutter/material.dart';
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

void _launchWildBakes() async =>
    await canLaunch("https://github.com/dannyyys/wild-bakes-landing-page")
        ? await launch("https://github.com/dannyyys/wild-bakes-landing-page")
        : throw 'Could not launch';

void _launchCrazy() async =>
    await canLaunch("https://crazy-button-workshop.vercel.app/")
        ? await launch("https://crazy-button-workshop.vercel.app/")
        : throw 'Could not launch';

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // SizedBox(
          //   //line
          //   height: 50.0,
          //   child: SolidLineConnector(
          //     thickness: 10,
          //   ),
          // ),
          SizedBox(
            height: 80.0,
            child: TimelineNode(
              indicator: Card(
                color: Colors.white30,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '2020',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.yellow[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
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
                  //color: Colors.white70,
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    hoverColor: Colors.blueGrey[600],
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/underConstruction',
                      );
                    },
                    child: Text(
                      'MySQL\nOnline shopping database',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[400],
                        fontFamily: 'Agne',
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
                color: Colors.yellow[200],
                size: 40,
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              color: Colors.yellow[200],
              thickness: 10,
            ),
          ),
          TimelineTile(
            oppositeContents: FittedBox(
              child: Container(
                //alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 25),
                height: 100,
                width: 500,
                child: Material(
                  //color: Colors.white70,
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    hoverColor: Colors.blueGrey[600],
                    onTap: _launchOodp,
                    child: Text(
                      'StarsPlanner\nCourse registration application',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[400],
                        fontFamily: 'Agne',
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
                color: Colors.yellow[200],
                size: 40,
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
            ),
          ),
          // SizedBox(
          //   //line
          //   height: 50.0,
          //   child: SolidLineConnector(
          //     thickness: 10,
          //   ),
          // ),
          SizedBox(
            height: 80.0,
            child: TimelineNode(
              indicator: Card(
                color: Colors.white30,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '2021',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.yellow[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
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
                  //color: Colors.white70,
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    hoverColor: Colors.blueGrey[600],
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
                        color: Colors.yellow[400],
                        fontFamily: 'Agne',
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
                color: Colors.yellow[200],
                size: 40,
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              color: Colors.yellow[200],
              thickness: 10,
            ),
          ),
          TimelineTile(
            oppositeContents: FittedBox(
              child: Container(
                //alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 25),
                height: 100,
                width: 500,
                child: Material(
                  //color: Colors.white70,
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    hoverColor: Colors.blueGrey[600],
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/underConstruction',
                      );
                    },
                    child: Text(
                      'EZstate\nProperty analysis forum',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[400],
                        fontFamily: 'Agne',
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
                color: Colors.yellow[200],
                size: 40,
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              color: Colors.yellow[200],
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
                  //color: Colors.white70,
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    hoverColor: Colors.blueGrey[600],
                    onTap: _launchWildBakes,
                    child: Text(
                      'Wild Bakes\nWebsite for a home-based bakery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[400],
                        fontFamily: 'Agne',
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
                color: Colors.yellow[200],
                size: 40,
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
            ),
          ),
          SizedBox(
            //line
            height: 50.0,
            child: SolidLineConnector(
              color: Colors.yellow[200],
              thickness: 10,
            ),
          ),
          TimelineTile(
            oppositeContents: FittedBox(
              child: Container(
                //alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 25),
                height: 100,
                width: 500,
                child: Material(
                  //color: Colors.white70,
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.circular(25.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25.0),
                    hoverColor: Colors.blueGrey[600],
                    onTap: _launchCrazy,
                    child: Text(
                      'Crazy button workshop\nMini browser game made with socket',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow[400],
                        fontFamily: 'Agne',
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
                color: Colors.yellow[200],
                size: 40,
              ),
              startConnector: SolidLineConnector(
                color: Colors.yellow[200],
                thickness: 10,
              ),
              endConnector: SolidLineConnector(
                color: Colors.yellow[200],
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
                  colors: [
                    Colors.yellow[200],
                    Colors.yellow[200],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
