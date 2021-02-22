import 'get_post.dart';
import 'get_post_model.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GetPost _getPost = new GetPost();
    return Scaffold(
      appBar: AppBar(
        title: Text('get data api'),
      ),
      body: FutureBuilder(
        future: _getPost.getPostData(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> dataPost = snapshot.data;
            // return ListView(
            //   children: dataPost
            //       .map((Post item) => ListTile(
            //             title: Text(item.title),
            //           ))
            //       .toList(),
            // );
            return ListView.builder(
              itemCount: dataPost.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    margin: EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Icon(Icons.access_alarm),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                dataPost[index].title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Container(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: 70,
                                    height: 30,
                                    color: Colors.amber,
                                    child: Center(
                                      child: Text(("lihat detail")),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }

          // return Center(
          //   child: CircularProgressIndicator(),
          // );
        },
      ),
    );
  }
}
