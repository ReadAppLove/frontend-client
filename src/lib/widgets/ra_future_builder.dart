import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/config/typography.dart';

class RaFutureBuilder extends StatelessWidget{

  final Future<dynamic> future;
  final Function builderFunction;

  const RaFutureBuilder({
    Key? key,
    required this.future,
    required this.builderFunction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: future,
      builder:
          (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        List<Widget> children = <Widget>[];

        if (snapshot.hasData) {
          return builderFunction(snapshot.data);
        }

        if (snapshot.hasError) {
          children = <Widget>[
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Error: ${snapshot.error.toString()}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.grey
                ),
              ),
            )
          ];
        }

        if(!snapshot.hasError && !snapshot.hasData){
          children = const <Widget>[
            SizedBox(
              child: CircularProgressIndicator(
                color: accentColor,
              ),
              width: 60,
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Attendere prego...',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            )
          ];
        }

        return SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        );
      },
    );
  }

}