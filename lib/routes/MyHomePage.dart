import 'dart:html';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AoA, Attia!",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.refresh, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text(
            "0313 1378515",
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "0.28",
                style: TextStyle(color: Colors.pink, fontSize: 32, fontWeight: FontWeight.bold),
              ),
               const Text(
                "PKR",
                style: TextStyle(color: Colors.black45, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
