import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ViewModel<S> extends StateNotifier<S> {
  ViewModel(super.initialState);

  void setState(S state) {
    super.state = state;
  }

  @override
  @mustCallSuper
  void dispose() {
    super.dispose();
  }
}
