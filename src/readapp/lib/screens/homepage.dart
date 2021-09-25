import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/screens/explore.dart';
import 'package:readapp/widgets/header.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomepageScreenState();
}

class HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        Header(
            imageUri: 'assets/images/homepage_header.jpg',
            title: 'Benvenuto'),
      ],
    );
  }
}