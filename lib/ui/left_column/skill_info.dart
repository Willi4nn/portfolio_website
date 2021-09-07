import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../main.dart';

class SkillInfo extends StatelessWidget {
  const SkillInfo({
    Key? key,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Column(children: [
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(children: [
                Row(
                  children: [
                    Text(
                      'habilidades'.toUpperCase(),
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
          DetailSkill(
              skillName: 'JavaScript',
              skillValue: 0.6,
              sizingInformation: sizingInformation),
          DetailSkill(
              skillName: 'HTML',
              skillValue: 0.7,
              sizingInformation: sizingInformation),
          DetailSkill(
              skillName: 'CSS',
              skillValue: 0.7,
              sizingInformation: sizingInformation),
          DetailSkill(
              skillName: 'Dart',
              skillValue: 0.2,
              sizingInformation: sizingInformation),
          DetailSkill(
              skillName: 'Python',
              skillValue: 0.4,
              sizingInformation: sizingInformation)
        ]));
  }
}

class DetailSkill extends StatelessWidget {
  const DetailSkill({
    Key? key,
    required this.skillName,
    required this.skillValue,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String skillName;
  final double skillValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            skillName.toUpperCase(),
            style: GoogleFonts.montserrat(
                fontSize: 20,
                color: sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? Colors.white
                    : primaryColor,
                fontWeight: FontWeight.w100),
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
            child: LinearPercentIndicator(
              percent: skillValue,
              backgroundColor: primaryColor,
              progressColor: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
}
