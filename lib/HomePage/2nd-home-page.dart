import 'package:flutter/material.dart';
import 'package:maze_game/Maze%20Game/Levels/Easy%20Level/easy.dart';
import 'package:maze_game/Maze%20Game/Levels/Hard%20Level/hard.dart';
import 'package:maze_game/Maze%20Game/Levels/Normal%20Level/normal.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => { Navigator.of(context).pop(),},
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              Text('Game Mods',
                style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,)
              ),
              IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.star,
                ),
              ),
            ],
          ),
        ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => EasyMode(),
                      )
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black54,
                  backgroundColor: Colors.blue,
                ),
                child:const Text("Easy",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => NormalMode(),
                      )
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black54,
                  backgroundColor: Colors.green,
                ),
                child:const Text("Normal",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => HardMod(),
                      )
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black54,
                  backgroundColor: Colors.red,
                ),
                child:const Text('Hard',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
