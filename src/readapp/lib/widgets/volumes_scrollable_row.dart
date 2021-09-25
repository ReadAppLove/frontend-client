import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:readapp/controllers/volume_category.dart';
import 'package:readapp/models/volume.dart';
import 'package:readapp/widgets/volume_card.dart';

class VolumesScrollableRow extends StatelessWidget {
  final String categoryId;

  const VolumesScrollableRow({Key? key, required this.categoryId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder(
          future: VolumeCategoryController.getVolumes(categoryId: categoryId),
          builder:
              (BuildContext context, AsyncSnapshot<List<Volume>> snapshot) {
            List<Widget> children = <Widget>[];

            if (snapshot.hasData) {
              snapshot.data?.forEach((volume) {
                children.add(
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: VolumeCard(volume: volume),
                  )
                );
              });
            }

            if(snapshot.hasError){
              children.add(Text('Error: ${snapshot.error}'));
            }

            return Row(
              children: children,
            );
          }),
    );
  }
}
