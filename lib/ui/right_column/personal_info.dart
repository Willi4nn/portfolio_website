import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Patos de Minas, Minas Gerais, Brasil',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Telefone: (34) 99990-3558',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'willianpereirasilva69@gmail.com',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
