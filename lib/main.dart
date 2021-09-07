import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
                ? IntrinsicHeight(
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
                  )
                : Container(
                    color: backgroundColor,
                  );
          },
        ),
      ),
    ));
  }
}
