final class PokemonDTO {
  const PokemonDTO({
    required this.id,
    required this.sprites,
  });

  factory PokemonDTO.fromJson(Map<String, Object?> json) {
    return PokemonDTO(
      id: json['id']! as int,
      sprites: json['sprites']! as Map<String, Object?>,
    );
  }

  final int id;
  final Map<String, Object?> sprites;
}
