import 'package:riverpod_di_example/src/features/pokemons_feed/models/pokemon.dart';
import 'package:riverpod_di_example/src/features/pokemons_feed/pokemons_repository.dart';
import 'package:riverpod_di_example/src/view_model.dart';

final class PokemonsFeedViewModel extends ViewModel<List<Pokemon>> {
  PokemonsFeedViewModel(this._repository) : super([]);

  final PokemonsRepository _repository;

  Future<void> fetchPokemons() async {
    final pokemonDtos = await _repository.fetchPokemons(count: 20);
    final pokemons = pokemonDtos.map(Pokemon.fromDTO).toList();
    setState(pokemons);
  }
}
