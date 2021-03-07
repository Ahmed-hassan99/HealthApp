import 'package:flutter/material.dart';
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';

class Third extends StatelessWidget {
  void _incrementCounter() {
    DatabaseReference _testRef =
        FirebaseDatabase.instance.reference().child("test");
    _testRef.set("Hello World ${Random().nextInt(100)}");
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: _incrementCounter);
  }
}
