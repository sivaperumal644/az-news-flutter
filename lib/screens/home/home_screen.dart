import 'package:az_news_flutter/screens/about/about.dart';
import 'package:az_news_flutter/screens/home/menu_constants.dart';
import 'package:flutter/material.dart';
import 'tabs/technology/technology_post.dart';
import 'tabs/general/general_post.dart';
import 'tabs/cricket/cricket_post.dart';
import 'tabs/business/business_post.dart';
import 'tabs/bitcoin/bitcoin_post..dart';
import 'tabs/entertainment/entertainment_post.dart';
import 'tabs/sports/sports_post.dart';
import 'tabs/health/health_post.dart';
import 'tabs/science/science_post.dart';
import 'tabs/navigation_drawer.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
            length: 9,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.redAccent[700],
                title: Text('az news'),
                actions: <Widget>[
                  PopupMenuButton<String>(
                    onSelected: (String choice){
                      if(choice == Constants.aboutApp) {
                        Navigator.push(context,
                            new MaterialPageRoute(
                                builder: (context) {
                                  return About();
                                }
                            )
                        );
                      }
                    },
                    itemBuilder: (BuildContext context){
                      return Constants.choices.map((String choice){
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                  )
                ],
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          'Technology',
                          style: TextStyle(
                            fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'General',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Cricket',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Business',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Bitcoin',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Entertainment',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Sports',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Health',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Science',
                          style: TextStyle(
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              drawer: Navigation(),
              body: TabBarView(
                  children: [
                    Technology(post: fetchPostTechnology()),
                    General(post: fetchPostGeneral()),
                    Cricket(post: fetchPostCricket()),
                    Business(post: fetchPostBusiness()),
                    Bitcoin(post: fetchPostBitcoin()),
                    Entertainment(post: fetchPostEntertainment()),
                    Sports(post: fetchPostSports()),
                    Health(post: fetchPostHealth()),
                    Science(post: fetchPostScience())
                  ]
              ),
            )
      ),
    );
  }
}

