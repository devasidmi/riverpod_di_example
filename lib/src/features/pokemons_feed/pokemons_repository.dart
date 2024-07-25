import 'package:riverpod_di_example/src/api/api_manager.dart';
import 'package:riverpod_di_example/src/api/models/pokemon_dto.dart';

final class PokemonsRepository {
  const PokemonsRepository(this._api);

  final ApiManager _api;

  Future<List<PokemonDTO>> fetchPokemons({int count = 5}) async {
    final response = await _api.fetchPokemons(count: count);
    final results = response.map(PokemonDTO.fromJson).toList();
    return results;
  }
}
