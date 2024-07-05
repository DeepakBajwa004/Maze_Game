import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

import '../../../HomePage/home-page.dart';

class HLevelTwo extends StatefulWidget {
  const HLevelTwo({super.key});

  @override
  State<HLevelTwo> createState() => _HLevelTwoState();
}

class _HLevelTwoState extends State<HLevelTwo> {
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
          columns: 15,
          rows: 25,
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
