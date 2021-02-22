import 'package:TrackingCovid/list-card-img.dart';
import 'package:flutter/material.dart';
import 'listview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    title: "navigasi",
    routes: <String, WidgetBuilder>{
      '/hal1': (BuildContext context) => MyApp(),
      '/hal2': (BuildContext context) => Hal2(),
      '/hal3': (BuildContext context) => HalTiga(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: SafeArea(
          child: Center(
            child: IconButton(
                icon: Icon(
                  Icons.android,
                  size: 50,
                  color: Colors.amber,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/hal2');
                }),
          ),
        ));
  }
}
