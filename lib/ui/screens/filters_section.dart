import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:freegames/provider/featuresapicall_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class FiltersContainer extends ConsumerWidget {
  const FiltersContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Consumer(builder: (context, watch, _) {
      final platform = watch(platformProvider).state;
      final sort = watch(sortProvider).state;

      return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Filter Games by multiple tags ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont('Anton',
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 3,
                        shadows: [
                          const Shadow(
                              // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black),
                          const Shadow(
                              // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black),
                        ]))),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: DropdownButton<String>(
                      elevation: 0,
                      underline: SizedBox(),
                      dropdownColor: Colors.blue.shade900.withOpacity(0.8),
                      value: platform,
                      style: const TextStyle(fontSize: 10, color: Colors.black),
                      items: <String>[
                        'all',
                        'pc',
                        'browser',
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
                        context.read(platformProvider).state = value.toString();
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: DropdownButton<String>(
                      elevation: 0,
                      underline: SizedBox(),
                      dropdownColor: Colors.blue.shade900.withOpacity(0.8),
                      value: sort,
                      style: const TextStyle(fontSize: 10, color: Colors.black),
                      items: <String>[
                        'release-date',
                        'popularity',
                        'alphabetical',
                        'relevance',
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
                        context.read(sortProvider).state = value.toString();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
