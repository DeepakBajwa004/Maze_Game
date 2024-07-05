
import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_game/Maze%20Game/Levels/Easy%20Level/Level_three.dart';

class LevelTwo extends StatefulWidget {
  const LevelTwo({super.key});

  @override
  State<LevelTwo> createState() => _LevelTwoState();
}

class _LevelTwoState extends State<LevelTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Level 2',
        ),
      ),
      body: SafeArea(
        child: Maze(
          player: MazeItem(
            'assets/images/chota_bheem.webp',
            ImageType.asset,
          ),
          columns: 6,
          rows: 6,
          wallThickness: 5,
          wallColor: Colors.red,
          finish: MazeItem(
              'assets/images/finish.png',
              ImageType.asset
          ),
          onFinish: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => LevelThree(),
                )
            );
          },
        ),
      ),
    );
  }
}
