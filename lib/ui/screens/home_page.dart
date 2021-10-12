import 'package:flutter/material.dart';
import 'package:freegames/ui/screens/categories_section.dart';
import 'package:freegames/ui/screens/filters_section.dart';
import 'package:freegames/ui/screens/list_games_section.dart';
import 'package:freegames/ui/screens/tittle_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Column(
                children: const [
                  TittleSection(),
                  CategoriesSection(),
                  FiltersContainer(),
                ],
              ),
              ListGames(),
            ],
          ),
        ),
      ),
    );
  }
}
