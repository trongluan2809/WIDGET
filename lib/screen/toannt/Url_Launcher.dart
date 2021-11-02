import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class UrlLauncherDart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Url Launcher'),
      ),
      body: Container(
        child: Center(
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  _launchURL();
                },
                child: Text('On Press To Web'),
              ),
              ElevatedButton(
                onPressed: () {
                  _launchMail();
                },
                child: Text('On Press To Mail'),
              ),
            ],
          )
        ),
      ),
    );
  }
  _launchURL() async {
    const url = 'https://flutterdevs.com/';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchMail() async {
    launch(
        "mailto:thanhtoangm97@gmail.com?subject=TestEmail&body=How are you%20plugin");
  }
  _launchMap() async {
    final String lat = "21.028511";
    final String lng = "105.804817";
    final String googleMapsUrl = "comgooglemaps://?center=$lat,$lng";
    final String appleMapsUrl = "https://maps.apple.com/?q=$lat,$lng";

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    }
    // if (await canLaunch(appleMapsUrl)) {
    //   await launch(appleMapsUrl, forceSafariVC: true);
    // } else {
    //   throw "Couldn't launch URL";
    // }
  }
}