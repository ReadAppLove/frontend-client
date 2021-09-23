import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:readapp/controllers/volume_category.dart';
import 'package:readapp/models/volume_category.dart';
import 'package:readapp/widgets/h2_title.dart';
import 'package:readapp/widgets/header.dart';
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
              FutureBuilder<List<VolumeCategory>>(
                future: VolumeCategoryController.list(
                    'it_IT'), // a previously-obtained Future<String> or null
                builder: (BuildContext context,
                    AsyncSnapshot<List<VolumeCategory>> snapshot) {
                  List<Widget> children;
                  if (snapshot.hasData) {
                    children = <Widget>[];

                    snapshot.data?.forEach((vc) {
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

                  } else if (snapshot.hasError) {
                    children = <Widget>[
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Error: ${snapshot.error}'),
                      )
                    ];
                  } else {
                    children = const <Widget>[
                      SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Awaiting result...'),
                      )
                    ];
                  }
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
