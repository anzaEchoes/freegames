import 'package:freegames/api/VideogameApi.dart';
import 'package:freegames/models/videogameM.dart';

class Videogames {
  Future<List<VideoGame>> videogameslist(String filtro) async {
    List<VideoGame> lista = [];

    await VideogameApi.httpGet('').then((json) {
      for (var item in json) {
        lista.add(VideoGame.fromJson(item));
      }
      return lista;
    }).catchError((e) {});

    return lista;
  }
}
