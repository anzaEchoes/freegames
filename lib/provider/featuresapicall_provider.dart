import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Providers are declared globally and specifies how to create a state
final sectionCategoriesColProvider = StateProvider((ref) => 2);

final taglProvider = StateProvider((ref) => 'shooter');

final platformProvider = StateProvider((ref) => 'all');

final sortProvider = StateProvider((ref) => 'relevance');

ScrollController _scrollController = ScrollController();

final ctrlProvider =
    StateProvider((ref) => _scrollController = ScrollController(
          initialScrollOffset: 0.0, // NEW
          keepScrollOffset: true, // NEW
        ));

void resetCtrl() {
  _scrollController.animateTo(
    // NEW
    _scrollController.position.minScrollExtent, // NEW
    duration: const Duration(milliseconds: 500), // NEW
    curve: Curves.ease, // NEW
  );
}
