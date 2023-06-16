// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Al Ahly",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$TeamAPoints",
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamAPoints++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamAPoints += 2;
                            });
                          },
                          child: Text(
                            "Add 2 Points",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamAPoints += 3;
                            });
                          },
                          child: Text(
                            "Add 3 Points",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Al Zamalek",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$TeamBPoints",
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBPoints++;
                          });
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamBPoints += 2;
                            });
                          },
                          child: Text(
                            "Add 2 Points",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamBPoints += 3;
                            });
                          },
                          child: Text(
                            "Add 3 Points",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  TeamBPoints = 0;
                  TeamAPoints = 0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
