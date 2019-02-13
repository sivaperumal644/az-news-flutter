import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
          backgroundColor: Colors.redAccent[700],
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ABOUT THE APP',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                  child: Text(
                      'The news in this app has been taken from newsapi and ESPNcricinfo. '
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Newsapi',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                  child: Text(
                      'News API is a simple HTTP REST API for searching and retrieving live articles from all over the web. You can search for articles with any combination .You need an API key to use the API - this is a unique key that identifies your requests. They are free for development, open-source, and non-commercial use. '
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ESPNcricinfo',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
                  child: Text(
                      "Set up in 1996, Cricinfo is the world's leading cricket website followed by millions around the world and provides cricket content for a variety of platforms globally - from TV to mobile phones. Cricinfo is a part of ESPN. The Worldwide Leader in Sports is the leading multinational, multimedia sports entertainment company featuring the broadest portfolio of multimedia sports assets with over 50 business entities.",
                  ),
                ),
            ],
          ),
        )
      ),
    );
  }

}