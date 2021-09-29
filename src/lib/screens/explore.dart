import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:readapp/controllers/volume_category.dart';
import 'package:readapp/widgets/h2_title.dart';
import 'package:readapp/widgets/header.dart';
import 'package:readapp/widgets/ra_future_builder.dart';
import 'package:readapp/widgets/volumes_scrollable_row.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ExploreScreenState();
}

class ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
    const Header(
      imageUri: 'assets/images/search_header.jpg',
      title: 'Esplora'
    ),
    Expanded(
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              RaFutureBuilder(
                future: VolumeCategoryController.list(
                    'it_IT'), // a previously-obtained Future<String> or null
                builderFunction: (data) {
                  List<Widget> children = <Widget>[];

                  data?.forEach((vc) {
                    children.add(
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              bottom: 10,
                              left: 15,
                            ),
                            child: H2Title(title: vc.name)
                        )
                    );
                    children.add(VolumesScrollableRow(categoryId: vc.categoryId));
                  });

                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
                    ),
                  );
                },
              ),
            ],
          )),
    )
        ],
      );
  }
}
