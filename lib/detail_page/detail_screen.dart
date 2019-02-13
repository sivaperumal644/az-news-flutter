import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget{
  final String title;
  final String image;
  final String author;
  final String description;
  final String url;

  DetailPage({this.title, this.image, this.author, this.description, this.url});

  @override
  Widget build(BuildContext context) {
    var shortDescription;

    String checkDescription() {
      if (description.length > 200) {
        return shortDescription = description.substring(0, 200) + "...";
      }
      else {
        return shortDescription = description;
      }
    }

    String checkAuthor(){
      if(author == null){
        return "- newsapi.org";
      }
      else{
        return "- " + author;
      }
    }

    launchURL() async {
      if (await canLaunch(Uri.encodeComponent(url))) {
        await launch(Uri.encodeComponent(url));
      } else {
        throw 'Could not launch';
      }
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(padding: EdgeInsets.fromLTRB(10.0,28.0,10.0,5.0),
              child: Card(
                child: Padding(padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 20.0),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: NetworkImage(image),
                      width: 350,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 15.0, 5.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(19.0, 4.0, 0.0,10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            checkAuthor(),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey
                            ),
                          ),
                        ],
                      )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(17.0, 0.0, 10.0,5.0),
                        child: Text(
                              checkDescription(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: ButtonTheme(
                          minWidth: 300.0,
                          height: 50.0,
                          child:RaisedButton(
                              color: Colors.blueAccent[700],
                              onPressed: launchURL,
                              child: Text(
                                'VISIT ARTICLE',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white
                                ),
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                )
            ),
        ),
      )
    );
  }

}
