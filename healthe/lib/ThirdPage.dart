import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
            child:
                new Icon(Icons.local_pizza, size: 150.0, color: Colors.teal)));
  }
}
