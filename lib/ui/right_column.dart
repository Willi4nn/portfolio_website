import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/right_column/content_widget_education.dart';
import 'package:portfolio_website/ui/right_column/content_widget_experience.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'right_column/name_widget.dart';
import 'right_column/personal_info.dart';

class RightColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  RightColumn(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [NameWidget(sizingInformation), PersonalInfo()],
              ),
              ContentWidgetExperience(
                  contentTitle: 'experiência',
                  sizingInformation: sizingInformation),
              ContentWidgetEducation(
                  contentTitle: 'escolaridade',
                  sizingInformation: sizingInformation),
            ],
          ),
        ),
      ),
    );
  }
}
