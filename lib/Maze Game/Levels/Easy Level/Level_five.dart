import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_game/Maze%20Game/Levels/Easy%20Level/finished.dart';


class LevelFive extends StatefulWidget {
  const LevelFive({super.key});

  @override
  State<LevelFive> createState() => _LevelFiveState();
}

class _LevelFiveState extends State<LevelFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Level 5',
        ),
      ),
      body: SafeArea(
        child: Maze(
          player: MazeItem(
            'assets/images/chota_bheem.webp',
            ImageType.asset,
          ),
          columns: 9,
          rows: 9,
          wallThickness: 5,
          wallColor: Colors.purple,
          finish: MazeItem(
              'assets/images/finish.png',
              ImageType.asset
          ),
          onFinish: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => Finished(),
                )
            );
          },
        ),
      ),
    );
  }
}

