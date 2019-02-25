import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewPost extends StatelessWidget {
  
  final List<Post> posts;

  ListViewPost({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(this.posts.elementAt(index).title),
                subtitle: Text(this.posts.elementAt(index).body),
                onTap: () {
                  print("tab on ${this.posts.elementAt(index).id}");
                },
              )
            ],
          );
        },
      ),
    );
  }
}
