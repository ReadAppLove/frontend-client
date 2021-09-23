import 'package:flutter/material.dart';
import 'package:readapp/screens/homepage.dart';
import 'package:readapp/widgets/main_frame.dart';

void main() {
  runApp(const MaterialApp(
    home: MainFrame(child: HomepageScreen()),
  ));
}

