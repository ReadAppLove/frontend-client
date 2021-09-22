import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget{

  final String imageUri;

  const Header({Key? key, required this.imageUri}) : super(key: key);

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
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Esplora',
              style: TextStyle(
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