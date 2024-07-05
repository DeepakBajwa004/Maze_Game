import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_game/Maze%20Game/Levels/Normal%20Level/Level_two.dart';

class NLevelOne extends StatefulWidget {
  const NLevelOne({super.key});

  @override
  State<NLevelOne> createState() => _NLevelOneState();
}

class _NLevelOneState extends State<NLevelOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          rows: 10,
          wallThickness: 5,
          wallColor: Colors.green,
          finish: MazeItem(
              'assets/images/finish.png',
              ImageType.asset
          ),
          onFinish: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => NLevelTwo(),
                )
            );
          },
        ),
      ),
    );
  }
}
