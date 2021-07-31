import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:mywebflut/components/app_bar.dart';
import 'package:mywebflut/components/contactBody.dart';
import 'package:url_launcher/url_launcher.dart';

String resume =
    "https://firebasestorage.googleapis.com/v0/b/spry-effect-288619.appspot.com/o/YS%20resume%203.2.pdf?alt=media&token=29976a1f-d5d6-404a-a688-d440f8d4f6f5";

void _launchTele() async => await canLaunch("https://t.me/Dannyyys")
    ? await launch("https://t.me/Dannyyys")
    : throw 'Could not launch';

void _launchDownload() async =>
    await canLaunch(resume) ? await launch(resume) : throw 'Could not launch';

void downloadFile() {
  html.AnchorElement anchorElement = new html.AnchorElement(
      href:
          "https://firebasestorage.googleapis.com/v0/b/spry-effect-288619.appspot.com/o/Yeow%20Ying%20Sheng%20resume6.pdf?alt=media&token=84b6502a-367b-40d2-918d-78699f1de10f");
  anchorElement.download =
      "https://firebasestorage.googleapis.com/v0/b/spry-effect-288619.appspot.com/o/Yeow%20Ying%20Sheng%20resume6.pdf?alt=media&token=84b6502a-367b-40d2-918d-78699f1de10f";
  anchorElement.click();
}

class Contact extends StatelessWidget {
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
              "assets/images/atik-sulianami-Ko9JTVSt6Ok-unsplash.jpg"),
          fit: BoxFit.cover,
        )),
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
            //Spacer(),
            contactBody(),
            Container(
              child: Column(
                children: [
                  FittedBox(
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.jpg"),
                            //fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
      
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: SizedBox(
                          height: 60,
                          width: 300,
                          child: Material(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(25.0),
                              hoverColor: Colors.green,
                             
                              onTap: _launchTele,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.send_rounded,
                                    color: Colors.white,
                                    size: 50,
                                
                                  ),
                                  Text(
                                    "https://t.me/Dannyyys",
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
                      SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: SizedBox(
                          height: 60,
                          width: 300,
                          child: Material(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(25.0),
                              hoverColor: Colors.green,
                              // onTap: _launchTele,
                              // onTap: downloadFile,
                              onTap: _launchDownload,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.download_rounded,
                                    color: Colors.white,
                                    size: 50,
                                    //onPressed: _launchTele,
                                  ),
                                  Text(
                                    "Resume",
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
         
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
                alignment: Alignment.center,
                child: IconButton(
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  color: Colors.white,
                  iconSize: 60,
                  onPressed: () {
              
                    Navigator.pushNamed(
                      context,
                      '/',
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
