import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:az_news_flutter/post/post.dart';
import 'package:flutter/material.dart';

Future<List<Post>> fetchPost() async {
  final response = await http.get('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=47ada2986be0434699996aaf4902169b');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    //var responseData = Post.fromJson(json.decode(response.body));
    var responseData = json.decode(response.body);
    List<Post> posts = [];

    for(var item in responseData){
      Post news = Post.fromJson(item);
      posts.add(news);
    }
    return posts;

  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Technology extends StatelessWidget{
  final Future<List<Post>> post;

  Technology({Key key, this.post}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Post>>(
          future: post,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemBuilder: (BuildContext context, int index){
                    return Text(snapshot.data[index].articles[0].publishedAt);
                  }
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

