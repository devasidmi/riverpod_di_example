library di;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_di_example/src/api/api_manager.dart';
import 'package:riverpod_di_example/src/features/pokemons_feed/models/pokemon.dart';
import 'package:riverpod_di_example/src/features/pokemons_feed/pokemons_feed_view_model.dart';
import 'package:riverpod_di_example/src/features/pokemons_feed/pokemons_repository.dart';

part 'manager_providers.dart';
part 'repository_providers.dart';
part 'view_model_providers.dart';

abstract final class Di {
  static final viewModel = _ViewModelProviders();
  static final manager = _ManagerProviders();
  static final repository = _RepositoryProviders();
}
