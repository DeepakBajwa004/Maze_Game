import 'package:flutter/material.dart';
import 'package:maze_game/Maze%20Game/Levels/Normal%20Level/Level_one.dart';

class NormalMode extends StatefulWidget {
  const NormalMode({super.key});

  @override
  State<NormalMode> createState() => _NormalModeState();
}

class _NormalModeState extends State<NormalMode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NLevelOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}
