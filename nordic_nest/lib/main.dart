import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'nordic nest',
          style: TextStyle(
            letterSpacing: 12,
            fontFamily: "MajorMonoDisplay",
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[300],
      ),
      backgroundColor: Colors.deepOrange[100],
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Image(image: AssetImage('assets/images/iceland.jpg')),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Image(image: AssetImage('assets/images/iceland1.jpg')),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Image(image: AssetImage('assets/images/norway.jpg')),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Image(image: AssetImage('assets/images/norway1.jpg')),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Image(image: AssetImage('assets/images/finland.jpg')),
          ),
        ],
      ),
    ),
  ));
}
