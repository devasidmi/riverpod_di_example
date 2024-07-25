part of 'di.dart';

final class _RepositoryProviders {
  late final pokemons = Provider(
    (ref) => PokemonsRepository(
      ref.watch(Di.manager.api),
    ),
  );
}
