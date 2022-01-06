import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.abrilFatface(fontSize: 22),
          ),
          Text(
            'SEE ALL',
            style: TextStyle(
                color: Colors.black.withOpacity(0.3),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
