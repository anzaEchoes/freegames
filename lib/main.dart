import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freegames/api/VideogameApi.dart';
import 'package:freegames/ui/screens/home_page.dart';
import 'package:freegames/ui/screens/intro/intro_page.dart';

void main() {
  VideogameApi.configureDio();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Loading());
  }
}
