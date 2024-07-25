part of 'di.dart';

final class _ViewModelProviders {
  late final pokemonsFeed =
      StateNotifierProvider<PokemonsFeedViewModel, List<Pokemon>>(
    (ref) => PokemonsFeedViewModel(
      ref.watch(
        Di.repository.pokemons,
      ),
    ),
  );
}
