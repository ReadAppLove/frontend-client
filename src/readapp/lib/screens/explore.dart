import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:readapp/widgets/header.dart';
import 'package:readapp/widgets/volume_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ExploreScreenState();
}

class ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          const Header(
            imageUri: 'assets/images/search_header.jpg',
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const <Widget>[
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: VolumeCard(
                          imageUrl: 'http://via.placeholder.com/120x170')
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
