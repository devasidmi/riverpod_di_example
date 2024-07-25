import 'package:dio/dio.dart';
import 'package:riverpod_di_example/src/api/api_path.dart';

final class ApiManager {
  late final _baseUrl = 'https://pokeapi.co/api/v2/';
  late final _http = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<List<Map<String, Object?>>> fetchPokemons({int count = 5}) async {
    final response = await Future.wait(
      [
        for (var i = 1; i <= count; i++)
          _http.get<Map<String, Object?>>(
            ApiPath.pokemon(i),
          ),
      ],
    );
    return response.map((e) => e.data!).toList();
  }
}
