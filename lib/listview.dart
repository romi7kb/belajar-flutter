import 'package:flutter/material.dart';
import 'data-list.dart';

class Hal2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("halaman 2"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: teman.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 350,
                      color: colorCodes[index],
                      child: Center(
                        child: Text(teman[index]),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: teman.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 50,
                      height: 120,
                      color: colorCodes1[index],
                      child: Center(
                        child: Text(teman[index]),
                      ),
                    );
                  },
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: teman.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: 100,
                            color: colorCodes[index],
                            child: Center(
                              child: Text(teman[index]),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: teman.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: 100,
                            color: colorCodes1[index],
                            child: Center(
                              child: Text(teman[index]),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Center(
                    child: TextButton(
                      child: Text("Next"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.cyanAccent,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/hal3');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
