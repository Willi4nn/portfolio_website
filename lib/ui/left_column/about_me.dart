import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../main.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
      child: Column(
        children: [
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(children: [
                Row(
                  children: [
                    Text(
                      'sobre mim'.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          fontSize: 50,
                          color: sizingInformation.deviceScreenType ==
                                  DeviceScreenType.desktop
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ])),
          Text(
            'Me chamo Willian, moro na cidade de Patos de Minas, atualmente estou cursando Sistemas de Informação na Unipam. Hoje sou desenvolvedor Front End, amo criar layouts para apps mobile e web, busco aperfeiçoar o meu aprendizado em Back End, para me evoluir mais como desenvolvedor.',
            textAlign:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? TextAlign.justify
                    : TextAlign.left,
            style: GoogleFonts.montserrat(
                fontSize: 20,
                color: sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? Colors.white
                    : primaryColor,
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}
