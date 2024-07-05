
import 'package:flutter/material.dart';
import 'HomePage/home-page.dart';
void main (){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15.0),
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Maze Game",
            style: TextStyle(color: Colors.white70,fontSize: 50,fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset (2, 2),
                  blurRadius: 2,
                ),
              ],
            ),
          ),
        ),
        body: const MyHomePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

