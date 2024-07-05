import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_game/Maze%20Game/Levels/Easy%20Level/Level_five.dart';


class LevelFour extends StatefulWidget {
  const LevelFour({super.key});

  @override
  State<LevelFour> createState() => _LevelFourState();
}

class _LevelFourState extends State<LevelFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Level 4',
        ),
      ),
      body: SafeArea(
        child: Maze(
          player: MazeItem(
            'assets/images/chota_bheem.webp',
            ImageType.asset,
          ),
          columns: 8,
          rows: 8,
          wallThickness: 5,
          wallColor: Colors.indigo,
          finish: MazeItem(
              'assets/images/finish.png',
              ImageType.asset
          ),
          onFinish: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => LevelFive(),
                )
            );
          },
        ),
      ),
    );
  }
}
