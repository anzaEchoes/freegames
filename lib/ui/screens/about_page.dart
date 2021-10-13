import 'package:flutter/material.dart';
import 'package:freegames/provider/launcherUrl.dart';
import 'package:freegames/ui/screens/shared_widgets/title_header.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0x00000000),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0x00000000),
                Colors.black,
                Colors.black,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 50,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TittleHeader(
                    tittle: 'App Design',
                    fontsSize: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
                    child: appdesigner(),
                  ),
                  TittleHeader(
                    tittle: 'Technology App',
                    fontsSize: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
                    child: technology(),
                  ),
                  TittleHeader(
                    tittle: 'Data Provider',
                    fontsSize: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
                    child: providerData(),
                  ),
                ],
              ),
            )));
  }

  appdesigner() {
    return Column(
      children: [
        IconUrl(
            urlImg: 'logos/github.png',
            title: 'GitHub Repository',
            url: 'https://github.com/anzaEchoes/freegames'),
        SizedBox(
          height: 20,
        ),
        IconUrl(
            urlImg: 'logos/linkedin.png',
            title: 'Linkedin Profile',
            url: 'https://www.linkedin.com/in/jorge-anza-93982775/'),
        SizedBox(
          height: 20,
        ),
        IconUrl(
            urlImg: 'type/browser.png',
            title: 'Web App Designer site',
            url: 'https://jorgeanzadev.netlify.app/#/'),
      ],
    );
  }

  providerData() {
    return Column(children: [
      IconUrl(
          urlImg: 'type/browser.png',
          title: 'Freetogame.com',
          url: 'https://www.freetogame.com/'),
    ]);
  }

  technology() {
    return Column(children: [
      IconUrl(
          urlImg: 'logos/flutter.png',
          title: 'Dart with Flutter',
          url: 'https://flutter.dev/'),
    ]);
  }

  Row IconUrl({
    required String title,
    required String url,
    required String urlImg,
  }) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              launchURL(url);
            },
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
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
                      image: AssetImage("assets/" + urlImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(title,
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontSize: 20,
                        color: Colors.blue,
                      )),
                ),
              ],
            ))
      ],
    );
  }
}
