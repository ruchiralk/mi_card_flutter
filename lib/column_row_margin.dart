import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // column try to take up all the vertical space but limit the horizontal expansion

          child: Column(
            mainAxisSize: MainAxisSize.min, // shrinks to fit the children
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                width: double.infinity, // hidden container
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MarginPadding extends StatelessWidget {
  // closet build method is called when the code is changed
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // Container without a child try to be as big as possible
        // use safe area to avoid notches
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            // outside the container, distance from the parent widget
            margin: EdgeInsets.only(left: 30),
            // inside the container, for the child
            padding: EdgeInsets.only(left: 30),
            color: Colors.white,
            // containers with children try to be as small as children's size
            child: Text('Hello'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
