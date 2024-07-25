import 'package:riverpod_di_example/src/api/models/pokemon_dto.dart';

final class Pokemon {
  const Pokemon({
    required this.id,
    required this.sprites,
  });

  factory Pokemon.fromDTO(PokemonDTO dto) {
    return Pokemon(
      id: dto.id,
      sprites: dto.sprites,
    );
  }

  final int id;
  final Map<String, Object?> sprites;

  String get imgUrl {
    final other = sprites['other']! as Map;
    final offcialArtwork = other['official-artwork'] as Map;
    return offcialArtwork['front_default'] as String;
  }
}
