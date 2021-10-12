import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freegames/provider/featuresapicall_provider.dart';
import 'package:freegames/static_files/datagames.dart';
import 'package:freegames/ui/screens/shared_widgets/category_item.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesSection extends ConsumerWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Consumer(builder: (context, watch, _) {
      final cols = watch(sectionCategoriesColProvider).state;

      return Container(
        padding: EdgeInsets.all(2),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.black,
            Color.fromRGBO(0, 0, 0, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        height: cols == 0 ? 50 : cols * 210,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 30),
                child: Text('Categories',
                    style: GoogleFonts.getFont(
                      'Anton',
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
            ),
            Positioned(
              right: -10,
              top: 15,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text("Columns",
                        style: GoogleFonts.getFont(
                          'Anton',
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(60, 0, 30, 0),
                    height: 40,
                    width: 35,
                    child: DropdownButton<String>(
                      elevation: 0,
                      underline: SizedBox(),
                      dropdownColor: Colors.blue.shade900.withOpacity(0.8),
                      value: context
                          .read(sectionCategoriesColProvider)
                          .state
                          .toString(),
                      style: const TextStyle(fontSize: 10, color: Colors.black),
                      items: <String>[
                        '0',
                        '1',
                        '2',
                        '4',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                              style: GoogleFonts.getFont(
                                'Anton',
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 15,
                                color: Colors.white,
                              )),
                        );
                      }).toList(),
                      onChanged: (value) {
                        context.read(sectionCategoriesColProvider).state =
                            int.parse(value.toString());
                      },
                    ),
                  ),
                ],
              ),
            ),
            cols == 0
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Consumer(builder: (context, watch, _) {
                      return GridView.count(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        // Create a grid with 2 columns. If you change the scrollDirection to
                        // horizontal, this produces 2 rows.
                        crossAxisCount: cols,
                        // Generate 100 widgets that display their index in the List.
                        children:
                            List.generate(DataGames.categories.length, (index) {
                          return GestureDetector(
                              onTap: () => {
                                    resetCtrl(),
                                    context
                                        .read(sectionCategoriesColProvider)
                                        .state = 1,
                                    context.read(taglProvider).state =
                                        regex(DataGames.categories[index].img),
                                  },
                              child: CategoryItem(
                                  category: DataGames.categories[index]));
                        }),
                      );
                    }),
                  ),
          ],
        ),
      );
    });
  }

  String regex(String text) {
    int index = text.indexOf('.');
    if (index == -1) {
      return 'shotter';
    }
    return text.substring(0, index);
  }
}
