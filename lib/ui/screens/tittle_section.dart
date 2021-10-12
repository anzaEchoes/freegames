import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freegames/ui/screens/about_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TittleSection extends ConsumerWidget {
  const TittleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
        height: 70,
        padding: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: -15,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: const DecorationImage(
                        image: AssetImage("assets/logos/rubik.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text('Free Games',
                        style: GoogleFonts.getFont(
                          'Anton',
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3,
                        )),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 20,
                right: 20,
                child: GestureDetector(
                  child: Icon(
                    Icons.info,
                    size: 40,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  onTap: () {
                    showCupertinoModalBottomSheet(
                      backgroundColor: Color(0x00000000),
                      context: context,
                      builder: (context) => FadeInUp(
                          duration: const Duration(milliseconds: 500),
                          child: AboutPage()),
                    );
                  },
                ))
          ],
        ));
  }
}
