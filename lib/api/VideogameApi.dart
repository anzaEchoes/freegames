import 'package:dio/dio.dart';

class VideogameApi {
  static Dio _dio = new Dio();

  static void configureDio() {
    // Base del url
    _dio.options.baseUrl =
        'https://free-to-play-games-database.p.rapidapi.com/api/games';

    // Configurar Headers
    _dio.options.headers = {
      'x-rapidapi-host': 'free-to-play-games-database.p.rapidapi.com',
      'x-rapidapi-key': '5e578e6463msh5c756cda5307673p1bd6d6jsn430e8a71d08a'
    };
  }

  static Future httpGet(String path) async {
    try {
      final resp = await _dio.get(path);

      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error en el GET');
    }
  }
}
