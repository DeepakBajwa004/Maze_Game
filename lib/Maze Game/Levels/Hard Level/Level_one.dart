import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

import 'Level_two.dart';


class HLevelOne extends StatefulWidget {
  const HLevelOne({super.key});

  @override
  State<HLevelOne> createState() => _HLevelOneState();
}

class _HLevelOneState extends State<HLevelOne> {
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
          columns: 20,
          rows: 15,
          wallThickness: 5,
          wallColor: Colors.green,
          finish: MazeItem(
              'assets/images/finish.png',
              ImageType.asset
          ),
          onFinish: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => HLevelTwo(),
                )
            );
          },
        ),
      ),
    );
  }
}
