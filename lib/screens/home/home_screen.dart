import 'package:flutter/material.dart';
import 'technology/technology_post.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.redAccent[700],
                title: Text('az news'),
                bottom: TabBar(
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
                      )
                    ]
                ),
              ),
              body: TabBarView(
                  children: [
                    Technology(post: fetchPost()),
                    Text('General'),
                    Text('Cricket')
                  ]
              ),
            )
      ),
    );
  }
}

