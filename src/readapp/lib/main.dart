import 'package:flutter/material.dart';
import 'package:readapp/config/typography.dart';
import 'package:readapp/screens/homepage.dart';
import 'package:readapp/widgets/main_frame.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: primaryColor,
    ),
    home: const MainFrame(
      child: HomepageScreen()
    ),
  ));
}

