import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class modified_text extends StatelessWidget {
  String? text;
  Color? color;
  double? size;

  modified_text({Key? key, this.text, this.color, this.size}) : super(key: key);

  Widget build(BuildContext context) {
    return Text(text!, style: GoogleFonts.roboto(color: color, fontSize: size));
  }
}
