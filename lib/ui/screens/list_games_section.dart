import 'package:flutter/material.dart';
import 'package:freegames/http_services/videogame_http.dart';
import 'package:freegames/models/videogameM.dart';
import 'package:freegames/ui/screens/list_games_view.dart';
import 'package:freegames/ui/screens/shared_widgets/game_item.dart';

class ListGames extends StatefulWidget {
  const ListGames({Key? key}) : super(key: key);

  @override
  State<ListGames> createState() => _ListGamesState();
}

class _ListGamesState extends State<ListGames> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<VideoGame> v = [];

  Future<List<VideoGame>> callapi() async {
    Videogames vd = Videogames();
    v = await vd.videogameslist('');
    return v;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FutureBuilder<List<VideoGame>>(
          future: callapi(),
          builder:
              (BuildContext context, AsyncSnapshot<List<VideoGame>> snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              return ListGameView(vieogames: v);
            } else if (snapshot.hasError) {
              return Column(children: [
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Error: ${snapshot.error}'),
                )
              ]);
            } else {
              return Column(children: const [
                CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Awaiting result...'),
                )
              ]);
            }
          },
        ),
      ),
    );
  }
}
