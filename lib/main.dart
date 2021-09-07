import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/ui/left_column/about_me.dart';
import 'package:portfolio_website/ui/left_column/height.dart';
import 'package:portfolio_website/ui/left_column/personal_avatar.dart';
import 'package:portfolio_website/ui/left_column/skill_info.dart';
import 'package:portfolio_website/ui/right_column/content_widget_education.dart';
import 'package:portfolio_website/ui/right_column/content_widget_experience.dart';
import 'package:portfolio_website/ui/right_column/name_widget.dart';
import 'package:portfolio_website/ui/right_column/personal_info.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/left_column.dart';
import 'ui/right_column.dart';

final primaryColor = Colors.black;
final backgroundColor = Color(0xFFEDF1F4);

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            return sizingInformation.deviceScreenType ==
                    DeviceScreenType.desktop
                ? DesktopUI(sizingInformation: sizingInformation)
                : MobileUI(sizingInformation: sizingInformation);
          },
        ),
      ),
    ));
  }
}

class MobileUI extends StatelessWidget {
  const MobileUI({Key? key, required this.sizingInformation}) : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PersonalAvatar(),
      Height(),
      AboutMe(sizingInformation: sizingInformation),
      Height(),
      SkillInfo(sizingInformation: sizingInformation),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [NameWidget(sizingInformation), PersonalInfo()],
          )
        ],
      ),
      ContentWidgetExperience(
          contentTitle: 'experiência', sizingInformation: sizingInformation),
      ContentWidgetEducation(
          contentTitle: 'escolaridade', sizingInformation: sizingInformation)
    ]);
  }
}

class DesktopUI extends StatelessWidget {
  const DesktopUI({Key? key, required this.sizingInformation})
      : super(key: key);

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: backgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftColumn(sizingInformation),
            RightColumn(sizingInformation)
          ],
        ),
      ),
    );
  }
}
