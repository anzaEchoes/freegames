import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TittleHeader extends StatelessWidget {
  final String tittle;
  final double fontsSize;

  const TittleHeader({Key? key, required this.tittle, required this.fontsSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      textAlign: TextAlign.center,
      style: GoogleFonts.getFont(
        'Anton',
        textStyle: Theme.of(context).textTheme.headline4,
        fontSize: fontsSize,
        color: Colors.white,
        letterSpacing: 3,
      ),
    );
  }
}
