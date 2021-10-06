import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Providers are declared globally and specifies how to create a state
final sectionCategoriesColProvider = StateProvider((ref) => 2);

final taglProvider = StateProvider((ref) => 'shotter');

final platformProvider = StateProvider((ref) => 'all');

final sortProvider = StateProvider((ref) => 'relevance');
