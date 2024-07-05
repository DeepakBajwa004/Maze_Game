import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'Level_two..dart';

class LevelOne extends StatefulWidget {
  const LevelOne({super.key});

  @override
  State<LevelOne> createState() => _LevelOneState();
}

class _LevelOneState extends State<LevelOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Level 1',
            ),
          ),
          body: SafeArea(
            child: Maze(
              player: MazeItem(
                'assets/images/chota_bheem.webp',
                ImageType.asset,
              ),
              columns: 5,
              rows: 5,
              wallThickness: 5,
              wallColor: Colors.green,
              finish: MazeItem(
                  'assets/images/finish.png',
                  ImageType.asset
              ),
              onFinish: (){
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => LevelTwo(),
                    )
                );
              },
            ),
          ),
        ),
      debugShowCheckedModeBanner: false,
    );
  }
}
