import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:freegames/ui/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Loading extends StatefulWidget {
  Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

Future<bool> cargando(context) async {
  await Future.delayed(Duration(seconds: 2));
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
  );
  return true;
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: FutureBuilder<bool>(
        future: cargando(context),
        builder: (
          BuildContext context,
          AsyncSnapshot<bool> snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return logoLoading(context);
          } else if (snapshot.connectionState == ConnectionState.done) {
            return Container();
          }
          return Container(
            height: 400,
            width: 400,
          );
        },
      )),
    );
  }

  logoLoading(context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Pulse(
          duration: Duration(seconds: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logos/rubik.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text('Free Games',
                  style: GoogleFonts.getFont(
                    'Anton',
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  )),
            ],
          ),
        ));
  }
}
