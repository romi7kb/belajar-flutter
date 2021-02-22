import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    title: "navigasi",
    routes: <String, WidgetBuilder>{
      '/hal1': (BuildContext context) => MyApp(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homeco.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.7,
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text('Be Aware'),
                    ButtonBar(
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text('ACTION 1'),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('ACTION 2'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
