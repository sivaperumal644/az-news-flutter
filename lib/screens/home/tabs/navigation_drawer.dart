import 'package:flutter/material.dart';
import 'package:az_news_flutter/screens/about/about.dart';
import 'package:url_launcher/url_launcher.dart';

class Navigation extends StatelessWidget{
  
  selectedUrlLaunch(String url) async{
    if(await canLaunch(url)) {
      await launch(url);
    }
    else{
      throw 'cannot open';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/az_new_icon.png',
                    width: 90,
                    height: 90,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'az news',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent[700]
              ),
            ),
            ListTile(
              title: Text('ABOUT APP'),
              onTap: () {
                Navigator.push(context,
                  new MaterialPageRoute(
                      builder: (context){
                        return About();
                      }
                  )
                );
              },
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('DEVELOPED BY'),
                ]
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/identity.png'
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Text('K SIVA PERUMAL'),
                  )
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image.asset(
                      'assets/gmail.png',
                      width: 34,
                    height: 34,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Text('sivaperumal644@gmail.com'),
                  )
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image.asset(
                      'assets/github.png',
                    height: 33,
                    width: 33,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Text('https://github.com'),
                  )
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                selectedUrlLaunch('https://github.com/sivaperumal644');
              },
            ),
          ],
        ),
    );
  }

}