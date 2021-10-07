import 'package:flutter/material.dart';
import 'package:freegames/models/videogameM.dart';

class GameDetails extends StatelessWidget {
  final VideoGame vd;

  const GameDetails({Key? key, required this.vd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(this.vd.title);
    return Container(
      color: Colors.red,
      child: Center(
          child: Text(
        this.vd.title,
        style: TextStyle(color: Colors.blue, fontSize: 40),
      )),
    );
  }
}
