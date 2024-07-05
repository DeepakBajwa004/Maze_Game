import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:maze_game/HomePage/home-page.dart';


class NLevelTwo extends StatefulWidget {
  const NLevelTwo({super.key});

  @override
  State<NLevelTwo> createState() => _NLevelTwoState();
}

class _NLevelTwoState extends State<NLevelTwo> {
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
          columns: 10,
          rows: 7,
          wallThickness: 5,
          wallColor: Colors.green,
          finish: MazeItem(
              'assets/images/finish.png',
              ImageType.asset
          ),
          onFinish: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )
            );
          },
        ),
      ),
    );
  }
}
