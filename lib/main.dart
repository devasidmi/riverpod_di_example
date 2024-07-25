import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_di_example/src/features/pokemons_feed/pokemons_feed_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ProviderScope(
        child: MaterialApp(
          theme: ThemeData.light(
            useMaterial3: false,
          ),
          home: const FeedPage(),
        ),
      );
}
