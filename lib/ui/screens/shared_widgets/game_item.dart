import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freegames/models/videogameM.dart';
import 'package:freegames/provider/launcherUrl.dart';
import 'package:google_fonts/google_fonts.dart';

class GameItem extends StatefulWidget {
  final VideoGame vd;

  const GameItem({Key? key, required this.vd}) : super(key: key);

  @override
  State<GameItem> createState() => _GameItemState();
}

class _GameItemState extends State<GameItem> {
  bool show = false;
  String platform = "browser.png";

  @override
  Widget build(
    BuildContext context,
  ) {
    if (widget.vd.platform == "PC (Windows)") {
      setState(() {
        platform = "pc.png";
      });
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          show = !show;
        });
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Stack(
          children: [
            CachedNetworkImage(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.8,
              imageUrl: widget.vd.thumbnail,
              httpHeaders: const {
                "x-rapidapi-host": "free-to-play-games-database.p.rapidapi.com",
                "x-rapidapi-key":
                    "5e578e6463msh5c756cda5307673p1bd6d6jsn430e8a71d08a"
              },
              fit: BoxFit.fill,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            show
                ? FadeInUp(
                    duration: const Duration(milliseconds: 400),
                    child: infoGame(context, widget.vd),
                  )
                : SizedBox(),
            Positioned(
              left: 15,
              top: 15,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 10),
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
                      image: DecorationImage(
                        image: AssetImage("assets/type/" + platform),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [Colors.black, Colors.black12, Colors.black],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                    child: Text(widget.vd.genre,
                        style: GoogleFonts.getFont(
                          'Roboto',
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container infoGame(BuildContext context, VideoGame vd) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0x00000000),
          Colors.black26,
          Colors.black45,
          Colors.black,
          Colors.black87,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(vd.title,
                          style: GoogleFonts.getFont(
                            'Anton',
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 25,
                            color: Colors.white,
                          )),
                      Text(vd.shortDescription,
                          style: GoogleFonts.getFont(
                            'Roboto',
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 20,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                        child: Text('By ' + vd.publisher,
                            style: GoogleFonts.getFont(
                              'Roboto',
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 18,
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 2,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            launchURL(widget.vd.gameUrl);
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.download_rounded,
                                size: 20,
                                color: Colors.amber,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('Go to Game',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18,
                                      color: Colors.amber,
                                    )),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            launchURL(widget.vd.freetogameProfileUrl);
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.share_rounded,
                                size: 20,
                                color: Colors.amber,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('FreeToGame.com',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 15,
                                      color: Colors.amber,
                                    )),
                              ),
                            ],
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
