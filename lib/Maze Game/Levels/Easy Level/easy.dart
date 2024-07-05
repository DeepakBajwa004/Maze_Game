

import 'package:flutter/material.dart';
import 'package:maze_game/Maze%20Game/Levels/Easy%20Level/Level_one.dart';


class EasyMode extends StatelessWidget {
  const EasyMode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LevelOne(),
    );
  }
}
