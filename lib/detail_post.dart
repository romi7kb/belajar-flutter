import 'package:flutter/material.dart';

class DetailPost extends StatelessWidget {
  const DetailPost({
    Key key,
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body,
  }) : super(key: key);
  final int userId;
  final int id;
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
