import 'package:flutter/material.dart';

import 'Level_one.dart';


class HardMod extends StatefulWidget {
  const HardMod({super.key});

  @override
  State<HardMod> createState() => _HardModState();
}

class _HardModState extends State<HardMod> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HLevelOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}
