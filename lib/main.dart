import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // ctl + j
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/swift-og.png'),
              ),
              Text(
                'Ruchira Munidasa',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 28.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal.shade100,
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[Icon()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
