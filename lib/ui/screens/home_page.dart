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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TittleSection(),
                  CategoriesSection(),
                  FiltersContainer(),
                  ListGames(),
                  Container(
                    color: Colors.black87,
                    height: 50,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
