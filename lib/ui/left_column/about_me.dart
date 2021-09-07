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
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(children: [
                Row(
                  children: [
                    Text(
                      'about me'.toUpperCase(),
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
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
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
