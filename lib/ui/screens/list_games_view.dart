import 'package:flutter/material.dart';
import 'package:freegames/models/videogameM.dart';
import 'package:freegames/ui/screens/shared_widgets/game_item.dart';

class ListGameView extends StatefulWidget {
  final List<VideoGame> vieogames;

  ListGameView({Key? key, required this.vieogames}) : super(key: key);

  @override
  _ListGameViewState createState() => _ListGameViewState();
}

class _ListGameViewState extends State<ListGameView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: datatowidgets(widget.vieogames)));
  }

  datatowidgets(List<VideoGame> vieogames) {
    List<Widget> listw = [];
    for (var item in vieogames) {
      listw.add(GameItem(
        vd: item,
      ));
    }
    return listw;
  }
}
