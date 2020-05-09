import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/*
* Si es un stateless widget
* podemos usar perfectamente el hotreload
* */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/me.jpeg'),
              ),
              SizedBox(
                height: 15,
                width: double.infinity,
              ),
              Text(
                "Miguel Monteiro",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Prime'),
              ),
              Text(
                "FULL-STACK DEV",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal.shade50,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.teal.shade100,

                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+34 616 385 179',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'miguelmonteiroclaveri@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 17,
                    ),
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
