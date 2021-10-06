import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:freegames/static_files/datagames.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final Categoy category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pulse(
      duration: Duration(milliseconds: 800),
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(4, 157, 217, 1),
                Color.fromRGBO(4, 104, 191, 1),
                Color.fromRGBO(4, 157, 217, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage("assets/categories/" + category.img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(category.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Anton',
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
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
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}
