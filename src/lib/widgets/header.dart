import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_search_bar.dart';

class Header extends StatelessWidget{

  final String imageUri;
  final String title;

  const Header({Key? key, required this.imageUri, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.width * 9 / 16,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(imageUri),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            alignment: Alignment.topCenter,
            child: const HeaderSearchBar(),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 10,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

}