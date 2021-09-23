import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternalPageFrame extends StatelessWidget{

  final Widget body;

  const InternalPageFrame({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: body,
    );
  }

}