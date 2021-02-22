import 'package:flutter/material.dart';
import 'data-list.dart';

class HalTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman 3'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Card(
                      elevation: 7,
                      color: Colors.brown,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: new Image.asset(
                              'assets/images/mieayam1.jpg',
                            ),
                          ),
                          Text(
                            'Makanan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Card(
                      color: Colors.brown,
                      elevation: 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: new Image.asset(
                              'assets/images/teh.jpg',
                            ),
                          ),
                          Text(
                            'Minuman',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        'Daftar Menu',
                        style: TextStyle(
                          height: 2,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: teman.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 170,
                          child: Card(
                            elevation: 3,
                            margin: const EdgeInsets.all(8),
                            color: colorCodes[index],
                            child: Center(
                              child: Text(
                                teman[index],
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 2.3,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 2.3,
                    color: Colors.red,
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
