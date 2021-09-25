import 'package:flutter/cupertino.dart';
import 'package:readapp/config/typography.dart';

class H2Title extends StatelessWidget{

  final String title;

  const H2Title({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: accentColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis
      )
    );
  }

}