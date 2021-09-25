import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternalPageFrame extends StatelessWidget{

  final Widget body;
  final String? title;

  const InternalPageFrame({Key? key, required this.body, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: body,
      ),
    );
  }

}