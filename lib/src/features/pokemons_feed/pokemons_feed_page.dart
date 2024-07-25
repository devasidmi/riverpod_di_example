import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_di_example/src/di/di.dart';

class FeedPage extends HookConsumerWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(Di.viewModel.pokemonsFeed.notifier);
    final state = ref.watch(Di.viewModel.pokemonsFeed);

    useEffect(
      () {
        viewModel.fetchPokemons();
        return null;
      },
      [],
    );

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 350,
          child: state.isEmpty
              ? const CircularProgressIndicator.adaptive()
              : PageView.builder(
                  itemCount: state.length,
                  controller: PageController(viewportFraction: 0.7),
                  itemBuilder: (context, index) {
                    final pokemon = state[index];
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(
                                0,
                                3,
                              ),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.network(
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return const CircularProgressIndicator.adaptive();
                            },
                            pokemon.imgUrl,
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
