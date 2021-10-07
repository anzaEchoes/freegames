import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freegames/models/videogameM.dart';
import 'package:freegames/ui/screens/game_details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class GameItem extends StatelessWidget {
  final VideoGame vd;
  const GameItem({Key? key, required this.vd}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalBottomSheet(
          backgroundColor: Color(0x00000000),
          context: context,
          builder: (context) => ZoomIn(
              duration: const Duration(milliseconds: 500),
              child: GameDetails(
                vd: vd,
              )),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: vd.thumbnail,
              height: 230,
              httpHeaders: const {
                "x-rapidapi-host": "free-to-play-games-database.p.rapidapi.com",
                "x-rapidapi-key":
                    "5e578e6463msh5c756cda5307673p1bd6d6jsn430e8a71d08a"
              },
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              placeholder: (context, url) => Container(
                  width: 50,
                  height: 50,
                  child: const CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 0, bottom: 5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.blue,
                    Colors.blue,
                    Colors.black,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                children: [
                  Text(vd.title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont('Anton',
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 20,
                          color: Colors.white,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
