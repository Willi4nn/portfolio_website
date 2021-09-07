import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'title_description_widget.dart';

class ContentWidgetEducation extends StatelessWidget {
  const ContentWidgetEducation({
    Key? key,
    required this.contentTitle,
    required this.sizingInformation,
  }) : super(key: key);

  final SizingInformation sizingInformation;
  final String contentTitle;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        padding: sizingInformation.deviceScreenType != DeviceScreenType.desktop
            ? const EdgeInsets.symmetric(horizontal: 16)
            : const EdgeInsets.all(0),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    contentTitle.toUpperCase(),
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 50,
                        color: Colors.black87),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      TitleDescriptionWidget(
          title: 'ee deiró eunápio borges (2008-2016)',
          description: 'Ensino Fundamental',
          sizingInformation: sizingInformation),
      TitleDescriptionWidget(
          title: 'ee deiró eunápio borges (2017-2019)',
          description: 'Ensino Médio',
          sizingInformation: sizingInformation),
      TitleDescriptionWidget(
          title: 'Sistemas de Informação - Unipam (2020-2023)',
          description: 'Graduação',
          sizingInformation: sizingInformation),
    ]);
  }
}
