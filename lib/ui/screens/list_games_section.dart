import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freegames/http_services/videogame_http.dart';
import 'package:freegames/models/videogameM.dart';
import 'package:freegames/provider/featuresapicall_provider.dart';
import 'package:freegames/ui/screens/list_games_view.dart';
import 'package:freegames/ui/screens/shared_widgets/game_item.dart';

class ListGames extends ConsumerWidget {
  List<VideoGame> v = [];

  Future<List<VideoGame>> callapi(Function watch) async {
    Videogames vd = Videogames();
    final category = watch(taglProvider).state;
    final platform = watch(platformProvider).state;
    final sort = watch(sortProvider).state;

    try {
      v = await vd.videogameslist(
          "?platform=$platform&category=$category&sort-by=$sort");
    } catch (e) {
      return [];
    }
    return v;
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Consumer(builder: (context, watch, _) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: FutureBuilder<List<VideoGame>>(
            future: callapi(watch),
            builder: (BuildContext context,
                AsyncSnapshot<List<VideoGame>> snapshot) {
              List<Widget> children;
              if (snapshot.hasData) {
                return listGames(v, context);
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
                  SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator()),
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
    });
  }

  listGames(List<VideoGame> v, context) {
    if (v.length == 0) {
      return const Center(
          child: Text(
        'Empty',
        style: TextStyle(color: Colors.white),
      ));
    } else {
      return ListGameView(vieogames: v);
    }
  }
}
