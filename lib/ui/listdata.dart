import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/post.dart';
import 'package:lab01/ui/list-view_post.dart';


class ListData extends StatelessWidget {

  Future<List<Post>> loadPost() async {
    http.Response resp =
        await http.get("https://jsonplaceholder.typicode.com/posts");
    print(resp.body);
    // Map<String, dynamic> data = json.decode(resp.body);
    List<dynamic> data = json.decode(resp.body);
    List<Post> posts = List();

    
    data.forEach((d){
      posts.add(Post.fromJson(d));
    });
  print(posts.length);
  print(posts.elementAt(20).title);
  return posts;
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST DATA"),
      ),
      body: FutureBuilder(
        future: loadPost(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasError) print("load data error");
          return snapshot.hasData
          ? ListViewPost(posts: snapshot.data)
          :Center(
            child: CircularProgressIndicator(),
          );
        },
      )
    );
  }
} 


