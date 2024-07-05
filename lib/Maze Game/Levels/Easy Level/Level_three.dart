

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_game/Maze%20Game/Levels/Easy%20Level/Leevel_four.dart';

class LevelThree extends StatefulWidget {
  const LevelThree({super.key});

  @override
  State<LevelThree> createState() => _LevelThreeState();
}

class _LevelThreeState extends State<LevelThree> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text(
          'Level 3',
        ),
      ),
      body: SafeArea(
        child: Maze(
          player: MazeItem(
            'assets/images/chota_bheem.webp',
            ImageType.asset,
          ),
          columns: 7,
          rows: 7,
          wallThickness: 5,
          wallColor: Colors.blue,
          finish: MazeItem(
              'assets/images/finish.png',
              ImageType.asset
          ),
          onFinish: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => LevelFour(),
                )
            );
          },
        ),
      ),
    );
  }
}
