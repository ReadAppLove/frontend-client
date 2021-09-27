import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readapp/controllers/volume.dart';
import 'package:readapp/widgets/internal_page_frame.dart';
import 'package:readapp/widgets/ra_future_builder.dart';
import 'package:readapp/widgets/volume_card.dart';

class SearchScreen extends StatefulWidget {
  final String searchQuery;

  const SearchScreen({Key? key, required this.searchQuery}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  int _startIndex = 0;

  _searchVolumes(String searchQuery) {
    return VolumeController.list(
        q: searchQuery,
        maxResults: 15,
        startIndex: _startIndex,
        langRestrict: 'it',
    );
  }

  @override
  Widget build(BuildContext context) {
    return InternalPageFrame(
        title: 'Cerca: "${widget.searchQuery}"',
        body: SizedBox(
          child: RaFutureBuilder(
            future: _searchVolumes(widget.searchQuery),
            builderFunction: _build,
          )
          ),
        );
  }

  _build(data){

    List<Widget> children = <Widget>[];

    data.forEach((volume) {
      children.add(Padding(
        padding: const EdgeInsets.all(5.0),
        child: VolumeCard(volume:volume),
      ));
    });

    return Wrap(
        children: children
    );
  }
}
