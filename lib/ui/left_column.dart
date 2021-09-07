import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../main.dart';
import 'left_column/about_me.dart';
import 'left_column/height.dart';
import 'left_column/personal_avatar.dart';
import 'left_column/skill_info.dart';

class LeftColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  const LeftColumn(this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 1,
      color: primaryColor,
      child: Column(
        children: [
          PersonalAvatar(),
          Height(),
          AboutMe(sizingInformation: sizingInformation),
          SkillInfo(sizingInformation: sizingInformation)
        ],
      ),
    );
  }
}
