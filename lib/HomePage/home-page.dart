import 'package:flutter/material.dart';
import 'package:maze_game/HomePage/2nd-home-page.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 400,
        child: Card(
          shadowColor:Colors.grey,
          elevation: 47,
          child: Padding(
            padding: const EdgeInsets.all(
              30.0,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/chotabheem2.webp',
                  height: 200,
                ),

                const Divider(
                  color: Colors.redAccent,
                  thickness: 1,
                ),

                const Text(
                  "MazeMe",
                  style: TextStyle(color: Colors.purple,fontSize: 40,fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => SecondHomePage(),
                        )
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black54,
                    backgroundColor: Colors.red,
                  ),
                  child: const Text("Play",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
