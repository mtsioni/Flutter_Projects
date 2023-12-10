// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF9BABB8),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/film.jpg'),
              ),
              Text(
                'thalia-maria tsioni',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF27374D),
                  fontFamily: 'LeagueScript',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 18.5,
                  fontFamily: 'SourceSans3',
                  color: Color(0xFF27374D),
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: Divider(
                  color: Color(0xFFFFA000),
                  thickness: 5,
                ),
              ),
              Card(
                color: Colors.white60,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFFFFA000),
                      size: 35,
                    ),
                    title: Text(
                      '+30 6933307598',
                      style: TextStyle(
                        color: Color(0xFF27374D),
                        fontFamily: 'SourceSans3',
                        fontSize: 21.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white60,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xFFFFA000),
                      size: 35,
                    ),
                    title: Text(
                      'thalia.tsioni@gmail.com',
                      style: TextStyle(
                        color: Color(0xFF27374D),
                        fontFamily: 'SourceSans3',
                        fontSize: 21.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  'made with ♡',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF27374D),
                    fontFamily: 'LeagueScript',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
